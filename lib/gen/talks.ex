defmodule Gen.Talks do
  def all() do
    [
      %{
        title: "Recommending Elixir To Build a Recommendation Engine?",
        reference: "https://anunknown.dev/articles/empex-2023-machine-learning",
        year: "2023",
        summary:
          "An introductory talk on [Elixir](https://elixir-lang.org) Machine Learning with a focus on [NX - Numerical Elixir](https://github.com/elixir-nx) and [Scholar](https://github.com/elixir-nx/scholar)\ngiven at [EMPEX NY](https://www.empex.co) in 2023.",
        pitch:
          "We built a recommender system for our gifting platform using Elixir's new(ish) ML capabilities, namely scholar and NX.  Did I mention this was our team’s first foray into production ML.  Join us as we discuss our journey as we give an outsider-looking-in perspective on Elixir ML.",
        conference: "EMPEX NY",
        urls: "[Blog](https://anunknown.dev/articles/empex-2023-machine-learning)"
      },
      %{
        title: "Offering each student an individualized exam",
        reference: "",
        year: "2020",
        summary:
          "A thought experiment about student evaluations given to the [faculty of engineering](https://www.uottawa.ca/faculty-engineering/)\nas part of the 2020 awards ceremonies where I explored how could we offer each student a unique exam.\nThe question can be naively answered with... we write a unique exam for each student.  To clarify,\nhow could we do this feasibly.  What would the process look like, what are the constraints, assumptions\nand pre-conditions for such an offering to be practically feasible.",
        pitch:
          "Proctoring exams in an online world is complicated.  One very real problem is how to limit a student's ability to collaborate on what should be an individual effort (in other words, mitigate cheating).  In this thought piece, we will look at what it might take to make this a reality.",
        conference: "UOttawa Awards"
      },
      %{
        title: "LiveView - Rich Client Side Experience Delivered from the Server",
        reference: "https://anunknown.dev/articles/empex-2019-liveview",
        year: "2019",
        summary:
          "An introductory talk on [Elixir](https://elixir-lang.org) / [Phoenix](https://phoenixframework.org) and (at the time) newly released [LiveView](https://github.com/phoenixframework/phoenix_live_view)\ngiven at [EMPEX NY](https://www.empex.co) in 2019.  **LiveView has changed considerable since\nit was first introduced and many approaches are now obsolete**.",
        pitch:
          "LiveView is launched, come learn more about the return to server side programming being used to manage client side state.\n\nOriginally announcement back in September 2018 at Elixir Conf (USA 2018), LiveView, the server side framework for delivering rich client interfaces is now open for business.\n\nDespite being very (very) new come learn more about some common user interface features that can be solved with LiveView, and some lessons learned along the way to refactoring away from custom JavaScript and towards LiveView controllers.",
        conference: "EMPEX NY",
        urls:
          "[Video](https://www.youtube.com/watch?v=KvvkWiECvjY)\n[Blog](https://anunknown.dev/articles/empex-2019-liveview)"
      },
      %{
        title: "git rebase -i HEAD~25",
        reference: "https://anunknown.dev/articles/git-rebase-webcampzg",
        year: "2019",
        summary:
          "In this [2019 talk at WebCampz Zagreb](https://2019.webcampzg.org/talks/git-rebase-i-head25/)\nwe explore some _internals_ of git and show how `git rebase` can be a powerful tool for building\nan information rich project history.",
        pitch:
          "Many developer interact with git a lot, like a lot a lot. Let's pull back the curtain and learn some practical rebase, cherry-pick, etc.\n\nMany software developer interact with git a lot, like a lot a lot. Yet most would probably struggle with some of the more advanced features that help make git even greater. In this talk we are going to look at the distributed part of git, responsible fetching from multiple sources, rebasing, and efficient cherry-picking. Let’s learn practical git with plenty of real-world examples to help bring your git-fu to the next level.",
        conference: "Web Camp Zagreb",
        urls:
          "[Video](https://www.youtube.com/watch?v=KvvkWiECvjY)\n[Blog](https://anunknown.dev/articles/git-rebase-webcampzg)"
      },
      %{
        title: "The Forever Developer",
        reference: "",
        year: "2018",
        summary:
          "In this talk given to [4th year SE students at uwaterloo](https://student.cs.uwaterloo.ca/~cs446/1171/)\nwe will look in the abstract at building your career as a forever developer, with anecdotes following my own path over the last 20 years.\nBut don’t worry, there will also be some very concrete examples, and technology predictions as there are great benefits to attaching yourself\nearly to right bandwagons in tech.",
        pitch:
          "Some people never stop loving to code.\n\nIf this might be you, then it’s not enough to simply continue to “code”, as you risk becoming obsolete despite your many years experience.",
        conference: "U Waterloo CS446"
      },
      %{
        title: "Elixir + Stripe",
        reference:
          "https://www.slideshare.net/aaforward/accepting-payments-using-stripe-and-elixir",
        year: "2017",
        summary:
          "A talk given remote to an audience in Hamburg (Germany), and later in person in Ottawa (Canada)\nwhere we walked through an example of collecting $$ payments using\n[Stripe](https://stripe.com) within an [Elixir](https://elixir-lang.org) project.",
        pitch: "Collecting payments in Elixir using Stripe.",
        conference: "Hamburg Elixir",
        urls:
          "[Slideshare](https://www.slideshare.net/aaforward/accepting-payments-using-stripe-and-elixir)"
      },
      %{
        title:
          "Elixir's Greatest Hits: An brief, but rich, anthology of the some of Elixir's awesomeness",
        reference: "https://anunknown.dev/articles/oh-the-apis-opencamps-2017",
        year: "2017",
        details:
          "In particular, I hope to touch on some of the following\n\n* `mix gen` as a replacement to `mix new`\n* Using mix aliases to simplify a lot of commn tasks\n* Improve your unit testing with `mix test.watch`\n* Even better testing with `DocTest`\n* Distilling the best ways to configure your application\n* Setting up your Database with Ecto\n* Managing Ecto migrations like a Pro\n* Testing with a database using Sandboxes\n* Building a client to your favourite API\n* Building custom mix tasks\n* Building custom command line apps\n* A different approach to Elixir umbrella project\n* Keeping Ecto Separate from Phoenix\n* Deploying with Distillery",
        summary: "An overview of the [Elixir language](https://elixir-lang.org).",
        pitch:
          "Elixir has been around since 2011/2012, and in those short years it has built up an excellent language, powerful tools and an inclusive community.\n\nIn this talk, I wanted to guide you through some of those\nmany great things.  The talk will be organized as a collection\nof recipes, libraries, framework, code snippets and opinionated practices to help you on your own journey using Elixir.\n\nThis talk will hopefully inspire you with the resources to go off on your own and start (or continue) to build great things with Elixir and maybe even give back to the community with more (or better) ways to accomplish things in the language.",
        conference: "Open Camps NY",
        urls:
          "[Video](https://www.youtube.com/watch?v=KvvkWiECvjY)\n[Blog](https://anunknown.dev/articles/oh-the-apis-opencamps-2017)\n[Conference](https://opencamps.org)"
      },
      %{
        title: "Oh, the API Clients You'll Build (in Elixir)",
        reference: "https://anunknown.dev/articles/oh-the-apis-opencamps-2017",
        year: "2017",
        summary:
          "Using [Elixir](https://elixir-lang.org) it can be quite rare (this was back in 2017, but still somewhat true today)\nto find officially supported clients for your favourite APIs.\n\nIn this [talk at Open Camps in 2017](https://opencamps.org/2017/about) we will look at how you\ncan build your own. The exercise of writing your own has many benefits.\n\n* First, you learn a bit more about Elixir, the language, and how to leverage a bunch of it features.\n* Second, you learn a bit more about the API you are working with.\n* And finally, you gain some insight into how it could be built so that you can better evaluate the altneratives.",
        pitch:
          "Congratulations!\n\nToday is your day.\n\nYou’re off to Build API Clients!\n\nYou’re off and away!\n\nYou have Elixir in your head.\n\nYou have GenServer, GenStage, and Streams to use.\n\nYou can pipe (|>) your functions\n\nas many times as you choose.",
        conference: "Open Camps NY",
        urls:
          "[Video](https://www.youtube.com/watch?v=KvvkWiECvjY)\n[Blog](https://anunknown.dev/articles/oh-the-apis-opencamps-2017)\n[Conference](https://opencamps.org)"
      },
      %{
        title: "Power of Zero",
        reference: "https://www.youtube.com/watch?v=4LIXBW58yIk",
        year: "2017",
        summary:
          "Automation is hard, but the benefits can be phenomenal. This\ncan be especially challenging when working on your [Elixir](https://elixir-lang.org) side\nproject, as you want to see results quickly, so maybe a\nzero-click deploy and continuous delivery are not on your mind.\n\nIn this talk at [ElixirConf USA 2017](https://elixirconf.com/2017/speakers/#andrew_forward),\nI will help show you that even on a budget, even\non a team of one you can streamline your software development\nto achieve some lofty goals including\n\n* Immutable infrastructure\n* Zero Downtime deploys\n* Automatic (aka Zero-Click) Builds (Continuous Integration)\n* Automatic (aka Zero-Click) Deploys (Continuous Delivery)",
        pitch:
          "Automate. Automate. Automate.\n\nCome learn how to leverage Digital Ocean API, Erlang's\nhot code swapping, and CI tools to build an automated\npipeline so that you can focus on writing code; not\ndeploying it.",
        conference: "ElixirConf USA",
        urls:
          "[Video](https://www.youtube.com/watch?v=4LIXBW58yIk)\n[Slideshare](https://www.slideshare.net/aaforward/power-of-zero-79570500)"
      },
      %{
        title:
          "Using (Controlled) Live Coding To Interactively Teach Programming Language Concepts",
        reference: "",
        year: "2017",
        summary:
          "In this talk given at the [2017 Consortium for Software Engineering Research](https://www.cser.ca)\nwe will demonstrate an interactive teaching technique to get\nstudents more involved when teaching programming language concepts.  The approach\nwill build on \"live\" code editors that are typically used for remote paired\nprogramming (or remote interview coding) and apply it to the classroom.\n\nThe talk will dog-food itself a bit, as I will run through some of the\ntechnical concepts used in the implementation by sharing code samples\nwith the environment itself, and anyone with a laptop could join in.",
        pitch:
          "Normally, live code editors provide an ability to keep remote clients in sync\nbetween all users.  Rather than simply mimic this automatic syncing of code, each\nstudent (audience member) will receive their own  working environment\n(in the cloud - so nothing but a browser required) and code can be selectively synced, pushed,\npulled between individuals students and/or the teacher.\n\nThis allows your audience to individually try things out in real-time, and the teacher to\ncontrol the direction of the lesson.  It keeps the students engaged and allows for better\ninteractions as students can now \"ask questions\" and \"demonstrate alternatives\" through code.",
        conference: "CSER"
      }
    ]
    |> Enum.map(&to_html/1)
  end

  defp to_html(talk) do
    talk
    |> Enum.map(fn
      {:pitch, markdown} -> {:pitch, A4word.Markdown.to_html(markdown)}
      {:summary, markdown} -> {:summary, A4word.Markdown.to_html(markdown)}
      {k, v} -> {k, v}
    end)
    |> Enum.into(%{})
  end
end
