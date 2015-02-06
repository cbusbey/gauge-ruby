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

module Gauge
  module Messages
    # forward declarations
    class ProtoSpec < ::ProtocolBuffers::Message; end
    class ProtoItem < ::ProtocolBuffers::Message; end
    class ProtoScenario < ::ProtocolBuffers::Message; end
    class ProtoTableDrivenScenario < ::ProtocolBuffers::Message; end
    class ProtoStep < ::ProtocolBuffers::Message; end
    class ProtoConcept < ::ProtocolBuffers::Message; end
    class ProtoTags < ::ProtocolBuffers::Message; end
    class Fragment < ::ProtocolBuffers::Message; end
    class Parameter < ::ProtocolBuffers::Message; end
    class ProtoComment < ::ProtocolBuffers::Message; end
    class ProtoTable < ::ProtocolBuffers::Message; end
    class ProtoTableRow < ::ProtocolBuffers::Message; end
    class ProtoStepExecutionResult < ::ProtocolBuffers::Message; end
    class ProtoExecutionResult < ::ProtocolBuffers::Message; end
    class ProtoHookFailure < ::ProtocolBuffers::Message; end
    class ProtoSuiteResult < ::ProtocolBuffers::Message; end
    class ProtoSpecResult < ::ProtocolBuffers::Message; end
    class ProtoStepValue < ::ProtocolBuffers::Message; end

    class ProtoSpec < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoSpec"

      required :string, :specHeading, 1
      repeated ::Gauge::Messages::ProtoItem, :items, 2
      required :bool, :isTableDriven, 3
      optional ::Gauge::Messages::ProtoHookFailure, :preHookFailure, 4
      optional ::Gauge::Messages::ProtoHookFailure, :postHookFailure, 5
      required :string, :fileName, 6
      repeated :string, :tags, 7
    end

    class ProtoItem < ::ProtocolBuffers::Message
      # forward declarations

      # enums
      module ItemType
        include ::ProtocolBuffers::Enum

        set_fully_qualified_name "gauge.messages.ProtoItem.ItemType"

        Step = 1
        Comment = 2
        Concept = 3
        Scenario = 4
        TableDrivenScenario = 5
        Table = 6
      end

      set_fully_qualified_name "gauge.messages.ProtoItem"

      required ::Gauge::Messages::ProtoItem::ItemType, :itemType, 1
      optional ::Gauge::Messages::ProtoStep, :step, 2
      optional ::Gauge::Messages::ProtoConcept, :concept, 3
      optional ::Gauge::Messages::ProtoScenario, :scenario, 4
      optional ::Gauge::Messages::ProtoTableDrivenScenario, :tableDrivenScenario, 5
      optional ::Gauge::Messages::ProtoComment, :comment, 6
      optional ::Gauge::Messages::ProtoTable, :table, 7
    end

    class ProtoScenario < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoScenario"

      required :string, :scenarioHeading, 1
      required :bool, :failed, 2
      repeated ::Gauge::Messages::ProtoItem, :contexts, 3
      repeated ::Gauge::Messages::ProtoItem, :scenarioItems, 4
      optional ::Gauge::Messages::ProtoHookFailure, :preHookFailure, 5
      optional ::Gauge::Messages::ProtoHookFailure, :postHookFailure, 6
      repeated :string, :tags, 7
      optional :int64, :executionTime, 8
    end

    class ProtoTableDrivenScenario < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoTableDrivenScenario"

      repeated ::Gauge::Messages::ProtoScenario, :scenarios, 1
    end

    class ProtoStep < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoStep"

      required :string, :actualText, 1
      required :string, :parsedText, 2
      repeated ::Gauge::Messages::Fragment, :fragments, 3
      optional ::Gauge::Messages::ProtoStepExecutionResult, :stepExecutionResult, 4
    end

    class ProtoConcept < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoConcept"

      required ::Gauge::Messages::ProtoStep, :conceptStep, 1
      repeated ::Gauge::Messages::ProtoItem, :steps, 2
      optional ::Gauge::Messages::ProtoStepExecutionResult, :conceptExecutionResult, 3
    end

    class ProtoTags < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoTags"

      repeated :string, :tags, 1
    end

    class Fragment < ::ProtocolBuffers::Message
      # forward declarations

      # enums
      module FragmentType
        include ::ProtocolBuffers::Enum

        set_fully_qualified_name "gauge.messages.Fragment.FragmentType"

        Text = 1
        Parameter = 2
      end

      set_fully_qualified_name "gauge.messages.Fragment"

      required ::Gauge::Messages::Fragment::FragmentType, :fragmentType, 1
      optional :string, :text, 2
      optional ::Gauge::Messages::Parameter, :parameter, 3
    end

    class Parameter < ::ProtocolBuffers::Message
      # forward declarations

      # enums
      module ParameterType
        include ::ProtocolBuffers::Enum

        set_fully_qualified_name "gauge.messages.Parameter.ParameterType"

        Static = 1
        Dynamic = 2
        Special_String = 3
        Special_Table = 4
        Table = 5
      end

      set_fully_qualified_name "gauge.messages.Parameter"

      required ::Gauge::Messages::Parameter::ParameterType, :parameterType, 1
      optional :string, :value, 2
      optional :string, :name, 3
      optional ::Gauge::Messages::ProtoTable, :table, 4
    end

    class ProtoComment < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoComment"

      required :string, :text, 1
    end

    class ProtoTable < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoTable"

      required ::Gauge::Messages::ProtoTableRow, :headers, 1
      repeated ::Gauge::Messages::ProtoTableRow, :rows, 2
    end

    class ProtoTableRow < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoTableRow"

      repeated :string, :cells, 1
    end

    class ProtoStepExecutionResult < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoStepExecutionResult"

      required ::Gauge::Messages::ProtoExecutionResult, :executionResult, 1
      optional ::Gauge::Messages::ProtoHookFailure, :preHookFailure, 2
      optional ::Gauge::Messages::ProtoHookFailure, :postHookFailure, 3
    end

    class ProtoExecutionResult < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoExecutionResult"

      required :bool, :failed, 1
      optional :bool, :recoverableError, 2
      optional :string, :errorMessage, 3
      optional :string, :stackTrace, 4
      optional :bytes, :screenShot, 5
      required :int64, :executionTime, 6
    end

    class ProtoHookFailure < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoHookFailure"

      required :string, :stackTrace, 1
      required :string, :errorMessage, 2
      optional :bytes, :screenShot, 3
    end

    class ProtoSuiteResult < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoSuiteResult"

      repeated ::Gauge::Messages::ProtoSpecResult, :specResults, 1
      optional ::Gauge::Messages::ProtoHookFailure, :preHookFailure, 2
      optional ::Gauge::Messages::ProtoHookFailure, :postHookFailure, 3
      required :bool, :failed, 4
      required :int32, :specsFailedCount, 5
      optional :int64, :executionTime, 6
      required :float, :successRate, 7
    end

    class ProtoSpecResult < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoSpecResult"

      required ::Gauge::Messages::ProtoSpec, :protoSpec, 1
      required :int32, :scenarioCount, 2
      required :int32, :scenarioFailedCount, 3
      required :bool, :failed, 4
      repeated :int32, :failedDataTableRows, 5
      optional :int64, :executionTime, 6
    end

    class ProtoStepValue < ::ProtocolBuffers::Message
      set_fully_qualified_name "gauge.messages.ProtoStepValue"

      required :string, :stepValue, 1
      required :string, :parameterizedStepValue, 2
      repeated :string, :parameters, 3
    end

  end
end
