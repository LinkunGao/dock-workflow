#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow
inputs:
  number: 
    type: int
    default: 262

  
outputs:
  final_answer:
    outputSource: sparc_data_tool/output_file
    type: File
steps:
  sparc_data_tool:
    run: ./sparc_workflow_example/tools/sparc_data_tool.cwl
    # run: /Users/linkungao/Desktop/2023-team-3/examples/sparc_workflow_example/tools/sparc_data_tool.cwl
    in:
      number: number
    out:
    - output_file
