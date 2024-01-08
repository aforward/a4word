defmodule A4wordWeb.PageController do
  use A4wordWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

  def resume(conn, _params) do
    jobs = [
      %{
        role: "Senior Software III",
        company: "CrossFit LLC",
        started: 2022,
        ended: "present",
        abstract:
          "Back to supporting our payment network throughout the world with many roles: architect, s/w design, developer, analyst, tester, support.  Key role with data privacy."
      },
      %{
        role: "Data Engineer",
        company: "CrossFit LLC",
        started: 2020,
        ended: 2021,
        abstract:
          "Architected and helped to implement the data engineering team at CrossFit.  Helped to identify the tooling (Snowflake, Fivetran, DBT, Python, Elixir, Git, and Sigma).  Built a test-driven-development automation tool and integrated with GitHub Actions for automatic quality checks on change changes.  Worked with the business to identify and implement data needs to help drive business decisions."
      },
      %{
        role: "Senior Software III",
        company: "CrossFit LLC",
        started: 2015,
        ended: 2020,
        abstract:
          "Architected and implemented a global payment solution to collect moneys from hundreds of countries, in dozens of payment options and routed through our global subsidiary.  Tracking hundreds of thousands of payments per year."
      },
      %{
        role: "Senior Software Developer",
        company: "CENX (now Ericsson)",
        started: 2010,
        ended: 2015,
        abstract:
          "Delivered engine to organize millions of records daily that fed into other systems for visualization, config automation and fault identification. Instrumental in early revenue."
      },
      %{
        role: "Software Consultant (Developer)",
        company: "Library and Archives",
        started: 2005,
        ended: 2010,
        abstract:
          "Helped amalgamate two Canadian departments (Archives with Library) to manage the safe circulation of archival material, and manage a new high-density storage facility."
      },
      %{
        role: "Software Consultant (Developer)",
        company: "Deloitte",
        started: 2003,
        ended: 2005,
        abstract:
          "Software consultant offering software design, construction and operations services to large government clients."
      }
    ]

    consultants = [
      %{
        company: "GiftBetter",
        year: 2024,
        summary:
          "Architecture/Implementation of CorporateGiftBot to help businesses to gift, better!"
      },
      %{
        company: "ZenHub (ZH)",
        year: 2022,
        summary:
          "Architecture/Implementation to help bring GitLab API into the ZH platform. Built grader.zenhub.com (retired)."
      },
      %{
        company: "Eclipse Foundation (EF)",
        year: 2021,
        summary:
          "Technical/risk analyst to migrate a Johns Hopkins grant management system to EF as Eclipse PASS."
      },
      %{
        company: "app8.ca",
        year: 2021,
        summary: "Integrated GooglePay into App8’s payment service backed by Stripe."
      },
      %{
        company: "thetundra.com",
        year: 2020,
        summary:
          "Scaled 1000s of concurrent users within AWS infra, Apache tuning, SQL optimizations, and caching."
      },
      %{
        company: "FPAC",
        year: 2015,
        summary:
          "Statistical API and an HTML/JS UI to visualize several data sources for Forestry Products of Canada."
      },
      %{
        company: "Hatch Mortgage",
        year: 2014,
        summary:
          "Simplified mortgage calculation (API and HTML / JS UI) to show  buyers what they can afford."
      },
      %{
        company: "NSERC CRMi",
        year: 2013,
        summary:
          "Data broker between several teams at NSERC to allow parallel development of ASP.Net apps and their Microsoft XRM server."
      },
      %{
        company: "ArrowMight LMS",
        year: 2011,
        summary:
          "Productionized their learning management system (LMS) to help track progress with the three Rs."
      }
    ]

    educations = [
      %{
        title: "Part-Time Professor (UOttawa)",
        summary:
          "S/E, Databases, WWW, PM, Requirements, and QA. Awarded 2020 P/T Prof of the Year for the Faculty of Engineering (University of Ottawa)."
      },
      %{
        title: "Talks",
        summary:
          "EMPEX 2023 / 2019, WebCampZg 2019, ElixirConf 2017, OpenCamps 2017.  Elixir/Ruby Meetup Ottawa."
      },
      %{
        title: "Professional Engineering (P.Eng)",
        summary: "Ontario since 2017"
      },
      %{
        title: "Cornell Certification in ML",
        year: 2023,
        summary:
          "Machine learning (ML) certificate using Python to implement algorithms like KNN, naive Bayes, regression trees, SVM, and neural networks.  Skills in problem framing, algorithm selection, and model debugging."
      },
      %{
        title: "PhD Computer Science",
        year: 2010,
        summary:
          "Ottawa-Carleton Institute for Computer Science (OCICS) focussed on software modeling with the Umple language. Nominated for Governor Generals Medal."
      },
      %{
        title: "Masters Computer Science",
        year: 2002,
        summary:
          "Ottawa-Carleton Institute for Computer Science (OCICS) focussed on software documentation"
      },
      %{
        title: "Software Engineering BASc",
        year: 2002,
        summary:
          "University of Ottawa. All facets of SDLC, Testing and Entrepreneurship. First batch of graduates in Canada."
      }
    ]

    technologies = [
      %{
        name: "Elixir",
        summary:
          "Early adopter since v0.3. Spoke at ElixirConf 2017 on deployment and  EMPEX 2023 on Machine Learning."
      },
      %{
        name: "Phoenix / LiveView",
        summary:
          "Built grader.zenhub.com (retired).  Built corporategitbot.com.  Migrating ArrowMight to Elixir/Phoenix. Spoke at EMPEX 2019 on LiveView. Side projects anunknown.dev, dividends.io and a4word.com. Also work with Ruby/Rails and PHP."
      },
      %{
        name: "HTML / CSS",
        summary:
          "Can convert designs into working code. Currently focussed on Tailwind and HEEx, but have used many other frameworks, templating engines and libraries."
      },
      %{
        name: "Postgres / MySQL / Redis / ETS",
        summary:
          "Strong understanding of SQL and DB Design. Have used NoSQLs were appropriate. Past experience with SQLServer and Oracle. Some exposure to GraphQL."
      },
      %{
        name: "Git / GitHub / GitLab / BitBucket",
        summary:
          "Strong advocate of git history as a highly curated story. Best captured in my talk at WebCampZg."
      },
      %{
        name: "dbt",
        summary:
          "Built TDD assertions (via macros), mostly focus on SQL with some Jinja. Mentor CrossFit data team. Automation via DbtCloud."
      },
      %{
        name: "AWS",
        summary:
          "Primarily Route53, CloudFront, EC2, ALB,, SQS, SNS. Also worked with  Digital Ocean, Rackspace, some Azure, and recently using fly.io."
      }
    ]

    skills = [
      %{
        name: "Leadership / Mentoring",
        summary:
          "Focus on technical excellence and individual mentoring. I have managed teams up to 50 persons, perform ad-hoc and structured mentoring on an ongoing basis, and have taught many university software engineering courses. When the student is ready, the teacher appears."
      },
      %{
        name: "Architecture / Design",
        summary:
          "Helped CENX in their early days build a sustainable revenue model with a data pipeline application that turned disparate data sources into a highly curated dataset. This data was internally available (both as SQL and via an HTTP API) to other add-on products. Helped CrossFit expand payments into 150+ countries routed through dozens of payment gateways (large and small) and integrating back into our CRM (SalesForce) and ERP (NetSuite) systems."
      },
      %{
        name: "Data Engineering",
        summary:
          "Helped form CrossFit's data team. Worked to design the data pipeline using DBT, Fivetran, Segment, Snowflake and Sigma. I ensured that all configurations of these services were managed via source control. Built an automated testing framework for DBT that integrates with GitHub Actions (via DBTCloud) and set up various levels of quality control. Strong knowledge of SQL and related tools."
      },
      %{
        name: "Implementation",
        summary:
          "Architects cannot just design. I am actively part of the development team and can work to build the design (as noted above) as well as implement the design of others. I extended App8s platform to support GooglePay, implemented data-privacy automations for CrossFit (in Elixir)."
      },
      %{
        name: "Infrastructure",
        summary:
          "Helped CrossFit upgrade their infra automation using Kitchen (part of CHEF), Bash and AWS CLI. Developer machines now 100% consistent and one-click upgradeable. Stage/Prod services equally consistent and upgradeable. Helped optimize AWS infra for significant cost savings."
      }
    ]

    conn
    |> assign(:jobs, jobs)
    |> assign(:consultants, consultants)
    |> assign(:educations, educations)
    |> assign(:technologies, technologies)
    |> assign(:skills, skills)
    |> render(:resume)
  end
end
