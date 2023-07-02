defmodule Gen.Publications do
  def all() do
    [
      %{
        abstract:
          "We present the results of a survey of 228 software practitioners conducted on two phases ten years apart. The goal of the study is to uncover trends in the practice of software design and the adoption patterns of modeling languages such as UML. The first phase was conducted in April-December 2007 and included 113 responses. The second phase was conducted in March-November 2017 and included 115 responses. Both surveys were conducted online, employed identical solicitation mechanisms, and included the same set of questions. The survey results are analyzed within each phase and across phases. We present the results and analysis of the data identifying upward and downward trends in design and modeling practices. The results suggest some increase in formal and informal modeling and identify key challenges with modeling platforms and tools. The results can help researchers, practitioners, and educators to focus efforts on issues of relevance and significance to the profession.",
        conference: "Model Driven Engineering",
        reference:
          "Omar Badreddin, Rahad Khandoker, Andrew Forward, Omar Masmali, Timothy C Lethbridge. \"A Decade of Software Design and Modeling: A Survey to Uncover Trends of the Practice\". Proceedings of the 21th ACM/IEEE International Conference on Model Driven Engineering Languages and Systems. 2018.",
        title:
          "A Decade of Software Design and Modeling: A Survey to Uncover Trends of the Practice",
        urls:
          "[Google Scholar](https://scholar.google.com/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:qxL8FJ1GzNcC)",
        year: "2018"
      },
      %{
        abstract:
          "Model Driven Architecture (MDA) advocates the use of models, rather than code, as the main development artifact. Yet model versioning and merging tools still lag in capabilities, ease of use and adoption relative to source code versioning and merging tools. This forces many teams to avoid model-based collaboration and concurrent model modifications. In this paper, we highlight the main challenges behind the relatively small adoption of model merging approaches. We present a novel model-based programming technology that addresses many of those challenges. The approach treats code and models uniformly, effectively enabling modelers to version and merge models using existing text-based technologies.",
        conference: "Modelsward",
        reference:
          "Omar Badreddin, Timothy C. Lethbridge, Andrew Forward. A Novel Approach to Versioning and Merging Model and Code Uniformly. Modelsward 2014.",
        title: "A Novel Approach to Versioning and Merging Model and Code Uniformly",
        year: "2014"
      },
      %{
        abstract:
          "Developers using model driven development (MDD) to develop systems lack the ability to specify traces at the model level. This results in specification of traces at the generated code level. In this paper, we are proposing trace directives that operate the model level to specify the tracing of UML attributes and state machines. Trace directives are implemented as a part of the Umple textual modeling language, thus these directives can be expressed in a textual form. Trace code will be injected into system source code that corresponds to trace directives specified at the model level.",
        conference: "Modelsward",
        reference:
          "Hamoud Aljamaan, Timothy C. Lethbridge, Andrew Forward. Specifying Trace Directives for UML Attributes and State Machines. Modelsward 2014.",
        title: "Specifying Trace Directives for UML Attributes and State Machines",
        year: "2014"
      }
    ]
  end
end
