#!/usr/bin/env ruby

# Copyright 2015 ThoughtWorks, Inc.

# This file is part of Gauge-Ruby.

# Gauge-Ruby is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Gauge-Ruby is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Gauge-Ruby.  If not, see <http://www.gnu.org/licenses/>.

# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

begin; require 'spec.pb'; rescue LoadError; end

module Gauge
  module Messages
    # forward declarations
    class GetProjectRootRequest < ::ProtocolBuffers::Message; end
    class GetProjectRootResponse < ::ProtocolBuffers::Message; end
    class GetInstallationRootRequest < ::ProtocolBuffers::Message; end
    class GetInstallationRootResponse < ::ProtocolBuffers::Message; end
    class GetAllStepsRequest < ::ProtocolBuffers::Message; end
    class GetAllStepsResponse < ::ProtocolBuffers::Message; end
    class GetAllSpecsRequest < ::ProtocolBuffers::Message; end
    class GetAllSpecsResponse < ::ProtocolBuffers::Message; end
    class GetAllConceptsRequest < ::ProtocolBuffers::Message; end
    class GetAllConceptsResponse < ::ProtocolBuffers::Message; end
    class ConceptInfo < ::ProtocolBuffers::Message; end
    class GetStepValueRequest < ::ProtocolBuffers::Message; end
    class GetStepValueResponse < ::ProtocolBuffers::Message; end
    class GetLanguagePluginLibPathRequest < ::ProtocolBuffers::Message; end
    class GetLanguagePluginLibPathResponse < ::ProtocolBuffers::Message; end
    class ErrorResponse < ::ProtocolBuffers::Message; end
    class PerformRefactoringRequest < ::ProtocolBuffers::Message; end
    class PerformRefactoringResponse < ::ProtocolBuffers::Message; end
    class APIMessage < ::ProtocolBuffers::Message; end

    class GetProjectRootRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetProjectRootRequest"

    end

    class GetProjectRootResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetProjectRootResponse"

      required :string, :projectRoot, 1
    end

    class GetInstallationRootRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetInstallationRootRequest"

    end

    class GetInstallationRootResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetInstallationRootResponse"

      required :string, :installationRoot, 1
    end

    class GetAllStepsRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetAllStepsRequest"

    end

    class GetAllStepsResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetAllStepsResponse"

      repeated ::Gauge::Messages::ProtoStepValue, :allSteps, 1
    end

    class GetAllSpecsRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetAllSpecsRequest"

    end

    class GetAllSpecsResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetAllSpecsResponse"

      repeated ::Gauge::Messages::ProtoSpec, :specs, 1
    end

    class GetAllConceptsRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetAllConceptsRequest"

    end

    class GetAllConceptsResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetAllConceptsResponse"

      repeated ::Gauge::Messages::ConceptInfo, :concepts, 1
    end

    class ConceptInfo < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ConceptInfo"

      required ::Gauge::Messages::ProtoStepValue, :stepValue, 1
      required :string, :filepath, 2
      required :int32, :lineNumber, 3
    end

    class GetStepValueRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetStepValueRequest"

      required :string, :stepText, 1
      optional :bool, :hasInlineTable, 2
    end

    class GetStepValueResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetStepValueResponse"

      required ::Gauge::Messages::ProtoStepValue, :stepValue, 1
    end

    class GetLanguagePluginLibPathRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetLanguagePluginLibPathRequest"

      required :string, :language, 1
    end

    class GetLanguagePluginLibPathResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.GetLanguagePluginLibPathResponse"

      required :string, :path, 1
    end

    class ErrorResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ErrorResponse"

      required :string, :error, 1
    end

    class PerformRefactoringRequest < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.PerformRefactoringRequest"

      required :string, :oldStep, 1
      required :string, :newStep, 2
    end

    class PerformRefactoringResponse < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.PerformRefactoringResponse"

      required :bool, :success, 1
      repeated :string, :errors, 2
      repeated :string, :filesChanged, 3
    end

    class APIMessage < ::ProtocolBuffers::Message
      # forward declarations

      # enums
      module APIMessageType
        include ::ProtocolBuffers::Enum

        set_fully_qualified_name "gauge.messages.APIMessage.APIMessageType"

        GetProjectRootRequest = 1
        GetProjectRootResponse = 2
        GetInstallationRootRequest = 3
        GetInstallationRootResponse = 4
        GetAllStepsRequest = 5
        GetAllStepResponse = 6
        GetAllSpecsRequest = 7
        GetAllSpecsResponse = 8
        GetStepValueRequest = 9
        GetStepValueResponse = 10
        GetLanguagePluginLibPathRequest = 11
        GetLanguagePluginLibPathResponse = 12
        ErrorResponse = 13
        GetAllConceptsRequest = 14
        GetAllConceptsResponse = 15
        PerformRefactoringRequest = 16
        PerformRefactoringResponse = 17
      end

      set_fully_qualified_name "gauge.messages.APIMessage"

      required ::Gauge::Messages::APIMessage::APIMessageType, :messageType, 1
      required :int64, :messageId, 2
      optional ::Gauge::Messages::GetProjectRootRequest, :projectRootRequest, 3
      optional ::Gauge::Messages::GetProjectRootResponse, :projectRootResponse, 4
      optional ::Gauge::Messages::GetInstallationRootRequest, :installationRootRequest, 5
      optional ::Gauge::Messages::GetInstallationRootResponse, :installationRootResponse, 6
      optional ::Gauge::Messages::GetAllStepsRequest, :allStepsRequest, 7
      optional ::Gauge::Messages::GetAllStepsResponse, :allStepsResponse, 8
      optional ::Gauge::Messages::GetAllSpecsRequest, :allSpecsRequest, 9
      optional ::Gauge::Messages::GetAllSpecsResponse, :allSpecsResponse, 10
      optional ::Gauge::Messages::GetStepValueRequest, :stepValueRequest, 11
      optional ::Gauge::Messages::GetStepValueResponse, :stepValueResponse, 12
      optional ::Gauge::Messages::GetLanguagePluginLibPathRequest, :libPathRequest, 13
      optional ::Gauge::Messages::GetLanguagePluginLibPathResponse, :libPathResponse, 14
      optional ::Gauge::Messages::ErrorResponse, :error, 15
      optional ::Gauge::Messages::GetAllConceptsRequest, :allConceptsRequest, 16
      optional ::Gauge::Messages::GetAllConceptsResponse, :allConceptsResponse, 17
      optional ::Gauge::Messages::PerformRefactoringRequest, :performRefactoringRequest, 18
      optional ::Gauge::Messages::PerformRefactoringResponse, :performRefactoringResponse, 19
    end

  end
end
