# Copy this file into a current Inferno test-kit template and register the suite.
# Configure the template with a FHIR R6 validator/package before executing it.
# The tests intentionally assert relationship semantics rather than vendor-specific codes.
module GenomicTrfTestKit
  class GenomicTrfSuite < Inferno::TestSuite
    id :genomic_trf
    title 'Genomic TRF relationship tests'
    description 'Checks order, specimen, questionnaire response, study, and reflex-order relationships.'

    group do
      id :genomic_trf_inputs
      title 'Order relationship checks'
      input :url
      input :genomic_test_order_id
      input :specimen_id
      input :questionnaire_response_id
      input :genomic_study_id
      input :reflex_order_id, optional: true

      fhir_client do
        url :url
      end

      test do
        id :genomic_trf_order_requirements
        title 'Genomic test order has core order elements'
        run do
          fhir_read(:service_request, genomic_test_order_id, name: :genomic_test_order)
          assert_response_status(200)
          assert_resource_type(:service_request)
          assert_valid_resource(profile_url: 'https://example.org/fhir/uv/genomic-trf/StructureDefinition/genomic-test-order')
          assert resource.subject.present?, 'ServiceRequest.subject is required.'
          assert resource.requester.present?, 'ServiceRequest.requester is required.'
          assert resource.code.present?, 'ServiceRequest.code is required.'
          assert resource.reason.present?, 'ServiceRequest.reason is required.'
          assert resource.supportingInfo.present?, 'ServiceRequest.supportingInfo is required.'
        end
      end

      test do
        id :genomic_trf_relationships
        title 'Specimen, response, and study link back to the order'
        run do
          fhir_read(:specimen, specimen_id)
          assert_response_status(200)
          assert_resource_type(:specimen)
          assert GenomicTrfSuite.references_order?(resource.request, genomic_test_order_id),
                 'Specimen.request must reference the genomic ServiceRequest.'

          fhir_read(:questionnaire_response, questionnaire_response_id)
          assert_response_status(200)
          assert_resource_type(:questionnaire_response)
          assert GenomicTrfSuite.references_order?(resource.basedOn, genomic_test_order_id),
                 'QuestionnaireResponse.basedOn must reference the genomic ServiceRequest.'

          fhir_read(:genomic_study, genomic_study_id)
          assert_response_status(200)
          assert_resource_type(:genomic_study)
          assert GenomicTrfSuite.references_order?(resource.basedOn, genomic_test_order_id),
                 'GenomicStudy.basedOn must reference the genomic ServiceRequest.'
        end
      end

      test do
        id :genomic_trf_reflex_safety
        title 'Draft reflex order is not treated as an active order'
        run do
          omit_if reflex_order_id.blank?, 'No reflex order was supplied for this scenario.'
          fhir_read(:service_request, reflex_order_id)
          assert_response_status(200)
          assert_resource_type(:service_request)
          assert resource.intent == 'reflex-order', 'Reflex ServiceRequest.intent must be reflex-order.'
          assert resource.status == 'draft', 'Untriggered reflex ServiceRequest.status must be draft.'
        end
      end
    end

    def self.references_order?(references, order_id)
      Array(references).any? do |reference|
        value = reference.respond_to?(:reference) ? reference.reference : nil
        value == "ServiceRequest/#{order_id}" || value&.end_with?("/ServiceRequest/#{order_id}")
      end
    end
  end
end
