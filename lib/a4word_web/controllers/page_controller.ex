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
        started: 2015,
        ended: "present",
        abstract:
          "Working on payments, accounting, security / authentication, privacy, and data analysis. Many roles: architect, s/w design, developer, data engineer, analyst, tester, support."
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

    conn
    |> assign(:jobs, jobs)
    |> assign(:consultants, consultants)
    |> render(:resume)
  end
end
