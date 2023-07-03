defmodule Gen.Publications do
  def all() do
    [
      %{
        abstract:
          "We present the results of a survey of 248 software practitioners conducted in three phases ten years apart. The goal of the study is to uncover trends in the practice of software design and the adoption patterns of modeling languages such as UML. The first phase was conducted in April-December 2007 and included 113 responses. The second phase was conducted in March-November 2017 and included 115 responses. The third phase is a post-survey study was conducted in November 2018 and included additional questionnaires with 20 participants. All survey phases were conducted online, employed identical solicitation mechanisms, and included the same set of questions. The survey results are analyzed within each phase and across phases. We present the results and analysis of the data identifying upward and downward trends in design and modeling practices. The results indicate a significant increase in the use of well-defined and formal modeling languages, as well as a marked increase in the adoption of Domain-Specific Languages. This is also reflected in a significant increase in the adoption of forward engineering methodologies. A key motivation for this uptake is a concern that programming languages and platforms may become quickly outdated. Unfortunately, there has been a consistent dissatisfaction with modeling tools features, particularly their ability to support effective communication and collaboration. This is mirrored by increasing dissatisfaction with modeling tools usability and learnability. Future projections of this study suggest that diversity in modeling languages and tools is likely to continue to grow, as well as the increase in reliance on models for automated artifacts generation. As such, model and tool interoperability is likely to become an even greater concern for the years to come. The results of this study can help researchers, practitioners, and educators to focus efforts on issues of relevance and significance to the profession. Specifically, this research will advocate to build better software modeling tools and promote modeling to the educators.",
        conference: "Journal of Object Technology",
        reference:
          "Badreddin, O., Rahad, K., Forward, A., Lethbridge, T.: The evolution of software design practices over a decade: a long term study of practitioners. J. Obj. Technol. 20(2), 1:1-1:19 (2021).",
        title:
          "The evolution of software design practices over a decade: A long term study of practitioners.",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:4DMP91E08xMC)\n[DOI](https://doi.org/10.5381/jot.2021.20.2.a1)",
        year: "2021"
      },
      %{
        abstract:
          "Umple is an open-source software modeling tool and compiler. It incorporates textual language constructs for UML modeling, including associations and state machines. It includes traits, aspects, and mixins for separation of concerns. It supports embedding methods written in many object-oriented languages, enabling it to generate complete multilingual systems. It provides comprehensive analysis of models and generates many kinds of diagrams, some of which can be edited to update the Umple code. Umple runs on the command line, in a web browser or in integrated development environments. It is designed to help developers reduce code volume, while they develop in an agile, model-driven manner. Umple is also targeted at educational users where students are motivated by its ability to generate real systems from their software models.",
        conference: "Science of Computer Programming (Journal)",
        reference:
          "Timothy C. Lethbridge, Andrew Forward, Omar Badreddin, Dusan Brestovansky, Miguel A. Garzón, Hamoud Aljamaan, Sultan Eid, Ahmed Husseini Orabi, Mahmoud Husseini Orabi, Vahdat Abdelzad, Opeyemi Adesina, Aliaa Alghamdi, Abdulaziz Algablan, and Amid Zakariapour. 2021. Umple: Model-driven development for open source and education. Science of Computer Programming 208 (2021), 102665.",
        title: "Umple: Model-driven development for open source and education",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:Wp0gIr-vW9MC)\n[Science Direct](https://www.sciencedirect.com/science/article/pii/S0167642321000587?via%3Dihub)\n[DOI](https://doi.org/10.1016/j.scico.2021.102665)",
        year: "2021"
      },
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
          "In this paper, we present a tool named UmpleRun that allows modelers to run the textually specified state machines under analysis with an execution scenario to validate the model's dynamic behavior. In addition, trace specification will output execution traces that contain model construct links. This will permit analysis of behavior at the model level.",
        conference: "EXE@ MoDELS",
        reference:
          "Hamoud Aljamaan, Miguel A. Garzon, Timothy C. Lethbridge, Andrew Forward, \"UmpleRun: a Dynamic Analysis Tool for Textually Modeled State Machines using Umple\", Workshop on Executable Modeling at the 18th ACM/IEEE International Conference on Model Driven Engineering Languages and Systems (MODELS), 2015.",
        title:
          "UmpleRun: a Dynamic Analysis Tool for Textually Modeled State Machines using Umple.",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:_kc_bZDykSQC)",
        year: "2015"
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
          "Test-Driven Development (TDD) is the practice of attempting to use the software you intend to write, before you write it. The premise is straightforward, but the specifics of applying it in different domains can be complex. In this paper, we provide aTDD approach for language development. The essence is to apply TDD at each of four levels of language processing, hence we call our approach Multi-Level TDD, or MLTDD. MLTDD can be applied to programming languages, preprocessors, domain specific languages, and transformation engines. MLTDD was used to build Umple, a model-oriented programming language available for Java, Ruby, and PHP. We present two case studies where this approach was implemented to develop two other domain specific languages.",
        conference: "Modelsward",
        reference:
          "Badreddin, O., Forward, A., Lethbridge, T.C.: A test-driven approach for developing software languages. In: MODELSWARD 2014, Portugal (2014)",
        title: "A test-driven approach for developing software languages",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:3fE2CSJIrl8C)",
        year: "2014"
      },
      %{
        abstract:
          "UML modelling tools provide poor support for composite state machine code generation. Generated code is typically complex and large, especially for composite state machines. Existing approaches either do not handle this case at all or handle it by flattening the composite state machine into a simple one with a combinatorial explosion of states, and excessive generated code. This paper presents a new approach that transforms a composite state machine into an equivalent set of simple state machines before code generation. This avoids the combinatorial explosion and leads to more concise and scalable generated code. We implement our approach in Umple. We report on a case study, comparing our approach to others in terms of code size and scalability.",
        conference: "MODELSWARD",
        reference:
          "O. Badreddin, T.C. Lethbridge, A. Forward, M. Elaasar, H. Aljamaan, M.A. Garzon. Enhanced code generation from UML composite state machines 2014 2nd International Conference on Model-Driven Engineering and Software Development (MODELSWARD), IEEE (2014, January), pp. 235-245",
        title: "Enhanced code generation from UML composite state machines",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:8k81kl-MbHgC)",
        year: "2014"
      },
      %{
        abstract:
          "UML classes involve three key elements: attributes, associations, and methods. Current object-oriented languages, like Java, do not provide a distinction between attributes and associations. Tools that generate code from associations currently provide little support for the rich semantics available to modellers such as enforcing multiplicity constraints or maintaining referential integrity. In this paper, we introduce a syntax for describing associations using a model-oriented language called Umple. We show source code from existing code-generation tools and highlight how the issues above are not adequately addressed. We outline code generation patterns currently available in Umple that resolve these difficulties and address the issues of multiplicity constraints and referential integrity.",
        conference: "Software Engineering Research, Management and Applications",
        reference:
          "O. Badreddin, A. Forward, T.C. Lethbridge. Improving code generation for associations: enforcing multiplicity constraints and ensuring referential integrity. Software Engineering Research, Management and Applications, Springer (2014), pp. 129-149",
        title:
          "Improving code generation for associations: enforcing multiplicity constraints and ensuring referential integrity",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:5nxA0vEk-isC)",
        year: "2014"
      },
      %{
        abstract:
          "We analyze the current direction of UML Action Language development and provide a classification of the proposed action language structure and statements. We also present a functioning implementation of an action language and discuss our platform for experimenting with Action Language based systems. We propose a novel approach that adopts a bottom-up technique to defining an action language. This approach embeds the action language into a textual environment that includes the UML modeling elements. Unlike current action languages that typically address class diagrams only, our proposal includes class and state machine modeling abstractions as part of the action language. We tackle the problem of modeling-in-text not by introducing yet another programming language, but instead by providing an increased level of abstraction to existing high level programming languages. Both, a textual representation of the model and its visual view represent the same underlying model but from different vantage points.",
        conference: "Modelsward",
        reference:
          "Omar Badreddin, Timothy C. Lethbridge, and Andrew Forward. \"Investigation and Evaluation of UML Action Languages\". MODELSWARD 2014, International Conference on Model-Driven Engineering and Software Development. 2014",
        title: "Investigation And Evaluation Of UML Action Languages",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:kNdYIx-mwKoC)",
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
      },
      %{
        abstract:
          "Implementing UML attributes directly in an object-oriented language may not appear to be complex, since such languages already support member variables. The distinction arises when considering the differences between modelling a class and implementing it. In addition to representing attributes, member variables can also represent association ends and internal data including counters, caching, or sharing of local data. Attributes in models also support additional characteristics such as being unique, immutable, or subject to lazy instantiation. In this paper we present modeling characteristics of attributes from first principles and investigate how attributes are handled in several open-source systems. We look code-generation of attributes by various UML tools. Finally, we present our own Umple language along with its code generation patterns for attributes, using Java as the target language.",
        conference: "SERA",
        reference:
          "O. Badreddin, A. Forward, T.C. Lethbridge. Exploring a model-oriented and executable syntax for UML attributes. Software Engineering Research, Management and Applications, Springer (2014), pp. 33-53",
        title: "Exploring a model-oriented and executable syntax for UML attributes",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:0EnyYjriUFMC)",
        year: "2013"
      },
      %{
        abstract:
          "Many tools and approaches support the use of modeling abstractions in textual form. However, there have been few studies about whether textual models are as comprehensible as graphical models. We present an experiment investigating the understandability of three different notations: Systems modeled in UML, and the same systems in both Java and Umple. Umple is a modeloriented programming technology that enhances languages like Java and PHP with textual modeling abstractions. It was designed to bridge the gap between textual and graphical modeling. Our experiment asked participants to answer questions reflecting their level of comprehension. The results reveal that for simple comprehension tasks, a visual model and a textual model are comparable. Java’s comprehension levels were lowest of all three notations. Our results align with the intuition that raising the abstraction levels of common object-oriented programming languages enhances comprehensibility.",
        conference: "CASCON",
        reference:
          "Badreddin, O., Forward, A., Lethbridge, T.: Model oriented programming: an empirical study of comprehension. In: CASCON. ACM (2012)",
        title: "Model oriented programming: an empirical study of comprehension.",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:hqOjcs7Dif8C)",
        year: "2012"
      },
      %{
        abstract:
          "The emergence of model-driven software development brings new opportunities and challenges for rapid prototyping. On the one hand, the modeling process is inherently abstract, removing the prototyper from details, and letting him or her focus on exploring design alternatives for various aspects of the system. On the other hand, the most popular modeling languages and tools entirely omit the modeling and generating of user interfaces. As a result, the benefit of user interface prototypes as a medium for interaction with the user and customer is lost. This paper presents a model-oriented technology called Umple that can be used for prototyping and also supporting model driven engineering. Umple allows end users to quickly create class and state machine models and to incrementally embed implementation artifacts. At any point in the modeling process, users can quickly generate a fully functional prototype that exposes modeling implications on the user interface, and allows stakeholders to get a feel of how the full system will behave.",
        conference: "Software: Practice and Experience",
        reference:
          "A. Forward, O. Badreddin, T. C. Lethbridge and J. Solano, \"Model-driven rapid prototyping with Umple\", Software: Practice and Experience, vol. 42, no. 7, pp. 781-797, Jul. 2012.",
        title: "Model‐driven rapid prototyping with Umple",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:LkGwnXOMwfcC)",
        year: "2012"
      },
      %{
        abstract:
          "We show how a technology called Umple can be used to improve teaching UML and modeling. Umple allows UML to be viewed both textually and graphically, with updates to one view reflected in the other. It allows UML concepts to be added to programming languages, plus web-based code generation from UML to those languages. We have used Umple in student laboratories and assignments for two years, and also live in the classroom. In a survey, students showed enthusiasm about Umple, and indicated they believe it helps them understand UML better. Improvements in their grades also support our approach.",
        conference: "CSEE&T",
        reference:
          "Lethbridge, T., Mussbacher, G, Forward, A. and Badreddin, O, (2011) \"Teaching UML Using Umple: Applying Model-Oriented Programming in the Classroom\", CSEE&T 2011, pp. 421-428.",
        title: "Teaching UML Using Umple: Applying Model-Oriented Programming in the Classroom",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:ufrVoPGSRksC)",
        year: "2012"
      },
      %{
        abstract:
          "Software Engineering has always been a fast moving and changing industry. This has continually presented an additional challenge for the Software Engineering research community; namely, how to catch up with fast changing technologies, tools, and practices? How to bring on-board yet another tool, methodology, or results to influence an industry that is driven by a variety of business objectives and regulations? How to make sure that current research efforts are aligned with cutting edge technologies and practices? Why is it that many of the technical advancements that we have seen in the software engineering and computer science come from the industry, rather than academia as it is the case in other disciplines?",
        conference: "CASCON",
        reference:
          "Omar Bahy Badreddin, Timothy Lethbridge, Hisham El-Shishiny, Margaret-Anne D. Storey, Andrew Forward: Challenges and opportunities in applying research prototypes and findings into industrial practice. CASCON 2010: 414-415",
        title:
          "Challenges and Opportunities in Applying Research Prototypes and Findings into Industrial Practice",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:YsMSGLbcyi4C)",
        year: "2010"
      },
      %{
        abstract:
          "In this paper we analyze the results of survey of how, when and why some software developers model, as well why many prefer not to model. The survey of 113 software practitioners studied the reasons developers chose code-centric versus model-centric software engineering, and also gathered data about the notations and tools used. Key findings include: UML is confirmed as the dominant modeling notation; modeling tools are primarily used to create documentation and for up-front design with little code generation; and modeling tools are also used to transcribe models from other media including whiteboards. The type and quality of generated code is one of the biggest reported problems.",
        conference: "MDD",
        reference:
          "Forward, A., Badreddin, O., and Lethbridge T.C. (2010), \"Perceptions of Software Modeling: A Survey of Software Practitioners\", 5th Workshop From code centric to model centric: Evaluating the effectiveness of MDD (C2M:EEMDD), Paris, June 2010.",
        title: "Perceptions of software modeling: a survey of software practitioners",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:IjCSPb-OGe4C)",
        year: "2010"
      },
      %{
        abstract:
          "This thesis investigates approaches to model-driven development (MDD) in which developers can keep using their familiar textual programming languages, but with additional modeloriented concepts. The added concepts include associations and attributes as found in the Unified Modeling Language (UML), as well as concepts from software patterns and other common programming abstractions.",
        conference: "PhD Thesis",
        reference:
          "Forward, A.: The convergence of modeling and programming: facilitating the representation of attributes and associations in the Umple model-oriented programming language, Ph.D. thesis, University of Ottawa (2010).",
        title:
          "The Convergence of Modeling and Programming: Facilitating the Representation of Attributes and Associations in the Umple Model-Oriented Programming Language",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&cstart=20&pagesize=80&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:W7OEmFMy1HYC)\n[Source](http://www.site.uottawa.ca/~tcl/gradtheses/aforwardphd/)",
        year: "2010"
      },
      %{
        abstract:
          "The emergence of model driven methodologies is bringing new challenges for software prototyping. Models tend to focus on the design of the system, and are less concerned with, or less able to, support prototype qualities like reuse, evolution, or weaving together independently designed parts. This paper presents a model-oriented prototyping tool called Umple that supports model driven engineering and overcomes some of the challenges related to prototyping in a modeling environment. Umple allows end users to quickly model class and state machine models and to incrementally embed implementation artifacts. At any point in the modeling process, users can quickly generate a fully functional prototype that exposes modeling implications on the user interface, and allows stakeholders to quickly get a feel of how the full system will behave.",
        conference: "RSP",
        reference:
          "Forward, A., Badreddin, O., and Lethbridge T.C. (2010), \"Umple: Towards Combining Model Driven with Prototype Driven System Development\", 21st IEEE International Symposium on Rapid System Prototyping, Fairfax VA, June.",
        title: "Umple: Towards combining model driven with prototype driven system development",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:Y0pCki6q_DkC)",
        year: "2010"
      },
      %{
        abstract:
          "Umple adds UML abstractions to base programming languages such as Java, PHP and Ruby. The resulting program can be seen as both model and code at the same time. Umplification is the process of converting a base language program to Umple by a series of refactorings. The result is a program semantically equivalent to the original, but which can be rendered and edited as UML diagrams by a modeling tool or manipulated as a textual program for those who prefer. In this paper we discuss the principles of Umple, the process of umplification, and two examples including umplification of the Umple compiler itself.",
        conference: "Working Conference on Reverse Engineerin",
        reference:
          "T.C. Lethbridge, A. Forward, O. Badreddin. Umplification: refactoring to incrementally add abstraction to a program. 2010 17th Working Conference on Reverse Engineering, IEEE (2010, October), pp. 220-224",
        title: "Umplification: Refactoring to incrementally add abstraction to a program",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:Y0pCki6q_DkC)",
        year: "2010"
      },
      %{
        abstract:
          "Umple is a set of extensions to existing object-oriented languages (currently PHP and Java) that provides a concrete syntax for UML abstractions like associations as well as certain software patterns. Umple, we argue, will help increase software program comprehension by allowing developers to describe a system at a more abstract level, and also by significantly reducing the amount of code that needs to be written and later understood.",
        conference: "ICPC",
        reference:
          "Forward, A., Lethbridge, T.C., and Brestovansky, D. (2009), \"Improving Program Comprehension by Enhancing Program Constructs: An Analysis of the Umple language\", International Conference on Program Comprehension (ICPC) 2009, Vancouver, IEEE Computer Society, pp. 311-312.",
        title:
          "Improving Program Comprehension by Enhancing Program Constructs: An analysis of the Umple language",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&cstart=20&pagesize=80&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:qjMakFHDy7sC)",
        year: "2009"
      },
      %{
        abstract:
          "Empirical software research could be improved if there was a systematic way to identify the types of software for which empirical evidence applies. This is because results are unlikely to be globally applicable, but are more likely to apply only in certain contexts such as the type of software on which the evidence has been tested. We present a software taxonomy that should help researchers to apply their research systematically to particular types of software. The taxonomy was generated using existing partial taxonomies and input from survey participants. If a taxonomy such as ours gains acceptance, it will facilitate comparison and appropriate application of research. In the paper, we present the benefits of such a taxonomy, the process we used to develop it, and the taxonomy itself.",
        conference: "Cascon",
        reference:
          "Forward, A. and Lethbridge, T.C. (2008) \"A Taxonomy of Software Types to Facilitate Search and Evidence-Based Software Engineering\", Cascon 2008, IBM and ACM, pp.179-181.",
        title:
          "A Taxonomy of Software Types to Facilitate Search and Evidence-Based Software Engineering",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&cstart=20&pagesize=80&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:2osOgNQ5qMEC)",
        year: "2008"
      },
      %{
        abstract:
          "We present some results of a survey of 113 software practitioners conducted between April and December 2007. The aim of the survey was to uncover their attitudes and experiences regarding software modeling, and development approaches that avoid modeling. We were motivated by observations that modeling is not widely adopted; many developers continue to take a code-centric approach. Key findings overall include: Modeling tools are primarily used to create documentation and for up-front design with little code generation; and participants believe that model-centric approaches to software engineering are easier but are currently not very popular as most participants currently work in code-centric environments. Key findings from sub-samples include: problems identified with model-centric approaches are similar regardless of a participant's country. Programmers that model extensively (versus those that do not model much) are more likely to agree that models become out of date and inconsistent with code.",
        conference: "ICSE",
        reference:
          "Forward, A., and Lethbridge, T.C. (2008), \"Problems and Opportunities for Model-Centric Versus Code-Centric Software Development: A Survey of Software Professionals\", Workshop on Modeling in Software Engineering, in conjunction with ICSE 2008, Leipzig, ACM, pp. 27-32.",
        title:
          "Problems and opportunities for model-centric versus code-centric software development: a survey of software professionals",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&cstart=20&pagesize=80&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:d1gkVwhDpl0C)",
        year: "2008"
      },
      %{
        abstract:
          "Putting aside the marketing hype of Web2.0, a few central themes have emerged: user generated content, software to enable users (not restrict them), building a community and instant feedback. Many of these concepts can equally apply to rich client applications and a focus on software development teams. The initial motivation for Code Snippets was to fulfill the personal needs of software developers. At times, they need to reuse the same coding constructs, library access, method calls, and web services. Recalling (or finding) this information is Drawing on similar success as online tagging libraries like del.icio.us and flickr.com, we have developed an Eclipse plug-in called CodeSnippets that allows software teams to document, store, share and search communal code to help answer the question, \"How do I code that?\".",
        conference: "SERA",
        reference:
          "Forward, A., Lethbridge, T.C. and Deugo, D (2007), \"CodeSnippets Plug-in to Eclipse: Introducing Web 2.0 Tagging to Improve Software Developer Recall\", Software Engineering Research, Management and Applications (SERA) 2007, August, IEEE Computer Society, pp. 451-460.",
        title:
          "CodeSnippets Plug-in to Eclipse, Introducing Web 2.0 Tagging to Improve Software Developer Recall",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&cstart=20&pagesize=80&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:UeHWp8X0CEIC)",
        year: "2007"
      },
      %{
        abstract:
          "Software engineering is a human task, and as such we must study what software engineers do and think. Understanding the normative practice of software engineering is the first step toward developing realistic solutions to better facilitate the engineering process. We conducted three studies using several data-gathering approaches to elucidate the patterns by which software engineers (SEs) use and update documentation. Our objective is to more accurately comprehend and model documentation use, usefulness, and maintenance, thus enabling better decision making and tool design by developers and project managers. Our results confirm the widely held belief that SEs typically do not update documentation as timely or completely as software process personnel and managers advocate. However, the results also reveal that out-of-date software documentation remains useful in many circumstances.",
        conference: "IEEE Software",
        reference:
          "Lethbridge, T.C., Singer, J and Forward, A., (2003) \"How software engineers use documentation: the state of the practice\", IEEE Software special issue: The State of the Practice of Software Engineering, Nov/Dec 2003, pp 35-39.",
        title: "How Software Engineers Use Documentation: The State of the Practice",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&citation_for_view=0PWZ8YMAAAAJ:u5HHmVD_uO8C)",
        year: "2003"
      },
      %{
        abstract:
          "Software documentation is an important aspect of both software projects and software engineering in general. In fact, documentation engineering has become a popular sub-domain in the software engineering community. Unfortunately, the current perception of documentation is that it is outdated, irrelevant and incomplete. For the most part, this perception is probably true. Regrettably, the documentation concern cannot be resolved by simply mandating more and better documentation. This approach fails to resolve the problem as the solution ignores the fundamental goals of software engineering. The role of documentation in a software engineering environment is to communicate information to its audience and instil knowledge of the system it describes. Documentation should efficiently allow for future software development without hindering current progress. Our research focuses on the issue of documentation quality. In particular, which attributes of documentation make it effective to the audience and how can this information be monitored and parameterized to provide a better perspective about the relevance of documentation in a software project.",
        conference: "Master’s Thesis",
        reference:
          "Andrew Forward. 2002. Software documentation: Building and maintaining artefacts of communication. University of Ottawa (Canada).",
        title: "Software Documentation – Building and Maintaining Artefacts of Communication",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&cstart=20&pagesize=80&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:9yKSN-GCB0IC)",
        year: "2002"
      },
      %{
        abstract:
          "This paper highlights the results of a survey of software professionals. The survey was conducted in the spring of 2002. The results are compiled from 48 individuals in the software field ranging from junior developers to managers and project leaders. One of the goals of this survey was to uncover the perceived relevance (or lack thereof) of software documentation, and the tools and technologies used to maintain, verify and validate such documents. The survey results highlight the preferences for and aversions against software documentation tools. Participants agree that documentation tools should seek to better extract knowledge from core resources. These resources include the system’s source code, test code and changes to both. Resulting technologies could then help reduce the effort required for documentation mainte-nance, something that is shown to rarely occur. The data reports compelling evidence that software professionals value technolo-gies that improve automation of the documentation process, as well as facilitating its maintenance.",
        conference: "DocEng",
        reference:
          "Forward, A. and Lethbridge, T.C. (2002), \"The Relevance of Software Documentation, Tools and Technologies: A Survey\", DocEng 2002: The ACM Conference on Documentation Engineering, pp 26-33.",
        title: "The Relevance of Software Documentation, Tools and Technologies: A Survey",
        urls:
          "[Google Scholar](https://scholar.google.com.sg/citations?view_op=view_citation&hl=en&user=0PWZ8YMAAAAJ&cstart=20&pagesize=80&sortby=pubdate&citation_for_view=0PWZ8YMAAAAJ:u-x6o8ySG0sC)",
        year: "2002"
      }
    ]
  end
end
