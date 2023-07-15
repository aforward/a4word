defmodule Gen.Books do
  def all() do
    [
      %{
        author: "Paulo Coelho",
        datetime: "2023-01-27",
        img: "![The Alchemist](covers/the-alchemist.jpg)",
        published: "1989-04-15",
        slug: "the-alchemist",
        summary:
          "Paulo Coelho's masterpiece tells the magical story of Santiago,\nan Andalusian shepherd boy who yearns to travel in search of a\nworldly treasure as extravagant as any ever found.\n\nThe story of the treasures Santiago finds along the way teaches us,\nas only a few stories can, about the essential wisdom of listening\nto our hearts, learning to read the omens strewn along life's path,\nand, above all, following our dreams.",
        title: "The Alchemist"
      },
      %{
        author: "Stephen King",
        datetime: "2023-01-24",
        img: "![On Writing -  A memoir of the Craft](covers/on-writing.jpg)",
        published: "2000-10-03",
        slug: "on-writing",
        summary:
          "Part memoir, part master class by one of the bestselling authors of all time,\nthis superb volume is a revealing and practical view of the writer's craft,\ncomprising the basic tools of the trade every writer must have.\nKing's advice is grounded in his vivid memories from childhood through\nhis emergence as a writer, from his struggling early career to his widely\nreported, near-fatal accident in 1999 — and how the inextricable link\nbetween writing and living spurred his recovery. Brilliantly structured,\nfriendly and inspiring, On Writing will empower and entertain everyone\nwho reads it—fans, writers, and anyone who loves a great story well told.",
        title: "On Writing -  A memoir of the Craft"
      },
      %{
        author: "Jessica Brody",
        datetime: "2023-01-20",
        img: "![Save The Cat! Writes a Novel](covers/save-the-cat-writes-a-novel.jpg)",
        published: "2018-10-09",
        slug: "save-the-cat-writes-a-novel",
        summary:
          "[Save The Cat!  Writes a Novel](https://www.jessicabrody.com/2020/11/how-to-write-your-novel-using-the-save-the-cat-beat-sheet/).\nWriting a book outline is hard. Writing a book in general is hard.\nPlotting a compelling character arc and figuring out what happens\nnext is a challenge for any writer, professional and newbie alike!\nYou can use this handy novel-writing template to outline, write,\nor revise any novel of any genre.",
        title: "Save The Cat! Writes a Novel"
      },
      %{
        author: "Robert M. Pirsig",
        datetime: "2023-01-15",
        img:
          "![Zen and the Art of Motorcycle Maintenance](covers/zen-and-the-art-of-motorcycle-maintenance.jpg)",
        published: "1974-01-01",
        slug: "zen-and-the-art-of-motorcycle-maintenance",
        summary:
          "A search for what define \"quality\", which Phaedrus understands to be Tao (aka Zen).",
        title: "Zen and the Art of Motorcycle Maintenance"
      },
      %{
        author: "Tony Fadell",
        datetime: "2023-01-15",
        img: "![Build: An Unorthodox Guide to Making Things Worth Making](covers/build.jpg)",
        published: "2022-05-02",
        slug: "build",
        summary:
          "[Build: An Unorthodox Guide to Making Things Worth Making](https://www.buildc.com).\nHow to think about choosing a job.\nHow to be a better manager.\nHow to approach design.\nHow to start a company.\nHow to run it.\nSo that’s what this book is. An advice encyclopedia. A mentor in a box.",
        title: "Build"
      },
      %{
        author: "H.G. Wells",
        datetime: "2023-01-14",
        img: "![War of the Worlds](covers/war-of-the-worlds.jpg)",
        published: "1898-01-01",
        slug: "war-of-the-worlds",
        summary:
          "The original(ish) alien invasion story, starts innocently with\nthe narrator telling the readers\n\"No one would have believed in the last years of the nineteenth\ncentury that this world was being watched keenly and closely by\nintelligences greater than man's...\"",
        title: "War of the Worlds"
      },
      %{
        author: "Kim Scott",
        datetime: "2023-01-14",
        img: "![Radical Candor](covers/radical-candor.jpg)",
        published: "2017-03-01",
        slug: "radical-candor",
        summary:
          "[Radical Candor](https://www.radicalcandor.com). Caring Personally while\nChallenging Directly — is guidance that’s both kind and clear,\nspecific and sincere. The antidote to toxic company cultures, it’s a simple concept\nthat’s not always easy to practice.\n\nFrom Radical Candor, Obnoxious Agression, Ruinous Empathy to Manipulative Insincerity.",
        title: "Radical Candor"
      },
      %{
        author: "Kim Scott",
        datetime: "2023-01-11",
        img: "![Make Time](covers/make-time.jpg)",
        published: "2018-09-01",
        slug: "make-time",
        summary:
          "[Make Time](https://maketime.blog) is not about crushing your to-do list, optimizing every hour,\nor maximizing personal productivity. It’s about rethinking the defaults\nof constant busyness and distraction so you can focus on what matters every day.\n\nWhat's is your highlight of the day, and F-off you infinity pools.",
        title: "Make Time"
      },
      %{
        author: "Satya Nadella",
        datetime: "2023-01-10",
        img:
          "![Hit Refresh: The Quest to Rediscover Microsoft's Soul and Imagine a Better Future for Everyone](covers/hit-refresh.jpg)",
        published: "2017-09-26",
        slug: "hit-refresh",
        summary:
          "Hit Refresh is about the transformation happening inside Microsoft and the arrival of the most exciting and disruptive wave of technology humankind has experienced—including mixed reality, artificial intelligence, and quantum computing.",
        title: "Hit Refresh"
      },
      %{
        author: "Eric Ries",
        datetime: "2022-12-23",
        img: "![The Lean Startup](covers/the-lean-startup.jpg)",
        published: "2011-09-13",
        slug: "the-lean-startup",
        summary: "Validated learning.",
        title: "The Lean Startup"
      },
      %{
        author: "Derek Sivers",
        datetime: "2022-12-01",
        img:
          "![How to Live: 27 conflicting answers and one weird conclusion](covers/how-to-live.jpg)",
        published: "2021-05-28",
        slug: "how-to-live",
        summary:
          "No philosophers are quoted. No -isms are named. Only actionable directives.\nThe end result feels more like poetry than prose.",
        title: "How to Live"
      },
      %{
        author: "Derek Sivers",
        datetime: "2022-11-15",
        img:
          "![Anything You Want: 40 Lessons for a New Kind of Entrepreneur](covers/anything-you-want.jpg)",
        published: "2011-06-29",
        slug: "anything-you-want",
        summary:
          "The journey of CD Baby that was started in 1998 by helping his\nfriends sell their CDs. In 2000, he hired his first employee.\nEight years later, he sold CD Baby for $22 million.",
        title: "Anything You Want"
      },
      %{
        author: "Daniel Lieberman",
        datetime: "2022-11-01",
        img:
          "![Exercised: Why Something We Never Evolved to Do Is Healthy and Rewarding](covers/exercised.jpg)",
        published: "2021-01-05",
        slug: "exercised",
        summary:
          "If exercise is healthy (so good for you!), why do many people dislike or avoid it?\nThese engaging stories and explanations will revolutionize the way you\nthink about exercising—not to mention sitting, sleeping, sprinting,\nweight lifting, playing, fighting, walking, jogging, and even dancing.",
        title: "Exercised"
      },
      %{
        author: "Carlo Rovelli",
        datetime: "2022-11-01",
        img: "![The Order of Time](covers/the-order-of-time.jpg)",
        published: "2018-05-08",
        slug: "the-order-of-time",
        summary:
          "Why do we remember the past and not the future? What does it mean for time to \"flow\"?\nDo we exist in time or does time exist in us?",
        title: "The Order of Time"
      },
      %{
        author: "KC Davis",
        datetime: "2022-10-01",
        img:
          "![How to Keep House While Drowning: A Gentle Approach to Cleaning and Organizing](covers/how-to-keep-house-while-drowning.jpg)",
        published: "2022-04-26",
        slug: "how-to-keep-house-while-drowning",
        summary: "In other words, messiness is not a moral failing.",
        title: "How to Keep House While Drowning"
      },
      %{
        author: "Thomas Erikson",
        datetime: "2022-10-01",
        img:
          "![Surrounded by Idiots: The Four Types of Human Behavior and How to Effectively Communicate with Each in Business (and in Life)](covers/surrounded-by-idiots.jpg)",
        published: "2019-07-30",
        slug: "surrounded-by-idiots",
        summary:
          "Author Thomas Erikson explains that there are four key behavior types that define\nhow we interact with and perceive the people around us. Understanding someone's\npattern of behavior is the key to successful communication.\nErikson breaks down the four kinds of behavior types—Reds who are dominant and\ncommanding, Yellows who are social and optimistic, Greens who are laid back and\nfriendly, and Blues who are analytical and precise—and explains how to identify\nand interact with each type of person. Instead of being bogged down with overly\n technical categorizations, the simple four color system allows you to speedily\n identify a friend or coworker and adjust how you speak and share with them.",
        title: "Surrounded by Idiots"
      },
      %{
        author: "Oliver Burkeman",
        datetime: "2022-07-01",
        img:
          "![Four Thousand Weeks: Time Management for Mortals](covers/four-thousand-numbers.jpg)",
        published: "2021-08-10",
        slug: "four-thousand-weeks",
        summary:
          "The average human lifespan is absurdly, insultingly brief.\nAssuming you live to be eighty, you have just over four thousand weeks.",
        title: "Four Thousand Weeks"
      },
      %{
        author: "Henrik Kniberg",
        datetime: "2022-07-01",
        img:
          "![Making Numbers Count: The Art and Science of Communicating Numbers](covers/making-numbers-count.jpg)",
        published: "2022-01-11",
        slug: "making-numbers-count",
        summary:
          "How much bigger is a billion than a million?\n\nWell, a million seconds is twelve days. A billion seconds is…thirty-two years.",
        title: "Making Numbers Count"
      },
      %{
        author: "Thomas Erikson",
        datetime: "2022-06-01",
        img:
          "![Great at Work: How Top Performers Do Less, Work Better, and Achieve More](covers/great-at-work.jpg)",
        published: "2018-01-30",
        slug: "great-at-work",
        summary:
          "Why do some people perform better at work than others? This deceptively simple question\ncontinues to confound professionals in all sectors of the workforce. Now,\nafter a unique, five-year study of more than 5,000 managers and employees,\nMorten Hansen reveals the answers in his \"Seven Work Smarter Practices\" that can\nbe applied by anyone looking to maximize their time and performance.",
        title: "Great at Work"
      },
      %{
        author: "Celeste Headlee",
        datetime: "2022-02-01",
        img:
          "![Do Nothing: How to Break Away from Overworking, Overdoing, and Underliving](covers/do-nothing.jpg)",
        published: "2020-03-10",
        slug: "do-nothing",
        summary:
          "Why do we measure our time in terms of efficiency instead of meaning? Why can't we just take a break?",
        title: "Do Nothing"
      },
      %{
        author: "Rob Fitzpatrick",
        datetime: "2022-02-01",
        img:
          "![The Mom Test: How to Talk to Customers & Learn if Your Business is a Good Idea When Everyone is Lying to You](covers/the-mom-test.jpg)",
        published: "2019-03-22",
        slug: "the-mom-test",
        summary:
          "They say you shouldn't ask your mom whether\nyour business is a good idea,\nbecause she loves you and will lie to you.",
        title: "The Mom Test"
      },
      %{
        author: "Greg McKeown",
        datetime: "2021-12-20",
        img: "![Effortless](covers/effortless.jpg)",
        published: "2021-04-26",
        slug: "effortless",
        summary:
          "[Effortless](https://gregmckeown.com/books/effortless/).\nGetting ahead doesn’t have to be as hard as we make it.\nNo matter what challenges or obstacles we face, there is a better way:\ninstead of pushing ourselves harder, we can find an easier path.\nEffortless offers actionable advice for making the most essential\nactivities the easiest ones, so you can achieve the results you want,\nwithout burning out.",
        title: "Effortless"
      },
      %{
        author: "Frank Herbert",
        datetime: "2021-12-20",
        img: "![Dune: Book One in the Dune Chronicles](covers/dune.jpg)",
        published: "1965-08-01",
        slug: "dune",
        summary:
          "Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides,\nwho would become the mysterious man known as Muad'dib. He would avenge the\ntraitorous plot against his noble family—and would bring to fruition humankind's\nmost ancient and unattainable dream.",
        title: "Dune"
      },
      %{
        author: "Sahil Lavingia",
        datetime: "2021-11-30",
        img:
          "![The Minimalist Entrepreneur: How Great Founders Do More with Less](covers/the-minimalist-entrepreneur.jpg)",
        published: "2021-10-26",
        slug: "the-minimalist-entrepreneur",
        summary:
          "The Minimalist Entrepreneur teaches founders how to:\n\n* start then learn\n* build a community, then solve a problem for them\n* charge for something even before you've built anything\n* avoid running out of money and, more importantly, energy\n* run a tight ship amid the rise of the gig economy and remote work\n* own a business without it owning you back.",
        title: "The Minimalist Entrepreneur"
      },
      %{
        author: "Bill Cates",
        datetime: "2021-11-20",
        img:
          "![Radical Relevance: Sharpen Your Marketing Message – Cut Through the Noise – Win More Ideal Clients](covers/radical-relevance.jpg)",
        published: "2019-10-26",
        slug: "radical-relevance",
        summary:
          "Sharpen Your Marketing Message - Cut Through the Noise - Win More Ideal Clients Radical\nRelevance will help you cut through the daily barrage of message overload your\nprospects experience, to reach the right people at the right time with the right\nmessage.",
        title: "Radical Relevance"
      },
      %{
        author: "Peter Zeihan",
        datetime: "2021-01-25",
        img:
          "![The End of the World is Just the Beginning](covers/the-end-of-the-world-is-just-the-beginning.jpg)",
        published: "2022-06-14",
        slug: "the-end-of-the-world-is-just-the-beginning",
        summary:
          "A world ending. A world beginning. Zeihan brings readers along for an\nilluminating (and a bit terrifying) ride packed with foresight, wit,\nand his trademark irreverence.",
        title: "The End of the World is Just the Beginning"
      },
      %{
        author: "Patrick J. McGinnis",
        datetime: "2021-01-01",
        img:
          "![The 10% Entrepreneur: Live Your Startup Dream Without Quitting Your Day Job](covers/10-percent-entrepreneur.jpg)",
        published: "2016-04-12",
        slug: "10-percent-entrepreneur",
        summary:
          "A detailed look at the mechanics of a side hustle.\n\nThe path to a 10% entrepreneur can be an investment of cash, time, and/or expertise\nworking as a founder, angel or adviser.",
        title: "The 10% Entrepreneur: Live Your Startup Dream Without Quitting Your Day Job"
      },
      %{
        author: "George Orwell",
        datetime: "2021-01-01",
        img: "![1984](covers/1984.jpg)",
        published: "1949-06-08",
        slug: "1984",
        summary:
          "Finally read the book.\n\nWinston is a rank-and-file worker who secretly hates the Party and dreams of rebellion.\n\nFelt like the Matrix's circular illusion of control.  Thoroughly enjoyed it.",
        title: "1984"
      },
      %{
        author: "Dan Harris",
        datetime: "2021-01-01",
        img:
          "![10% Happier: How I Tamed the Voice in My Head, Reduced Stress Without Losing My Edge, and Found Self-Help That Actually Works - A True Story](covers/10-percent-happier.jpg)",
        published: "2019-04-16",
        slug: "10-percent-happier",
        summary:
          "The book starts as a life story of journalist covering the typical topics of sex, drugs and public life.\n\nHarris eventually gets into his discovery of mindfulness and meditation.",
        title:
          "10% Happier: How I Tamed the Voice in My Head, Reduced Stress Without Losing My Edge, and Found Self-Help That Actually Works - A True Story"
      },
      %{
        author: "Jordan B. Peterson",
        datetime: "2021-01-01",
        img: "![12 Rules for Life: An Antidote to Chaos](covers/12-rules-for-life.jpg)",
        published: "2018-01-12",
        slug: "12-rules-for-life",
        summary: "I couldn't get into this book, probably me, only slightly the author.",
        title: "12 Rules for Life: An Antidote to Chaos"
      },
      %{
        author: "Chriss Voss",
        datetime: "2021-01-01",
        img: "![never-split-the-difference](covers/never-split-the-difference.jpg)",
        published: "2016-05-17",
        slug: "never-split-the-difference",
        summary:
          "Get your opposition to work to solve your problems.  \"How am I going to do that?\".\n\nGreat stories, practical advice.\n\nI found the title mis-leading as I thought it would be a more of a \"winner takes all\" approach, but really it's not (except maybe the story about buying his red truck).",
        title: "Never Split the Difference: Negotiating As If Your Life Depended On It"
      },
      %{
        author: "Mattias Skarin",
        datetime: "2021-01-01",
        img:
          "![Real-World Kanban: Do Less, Accomplish More with Lean Thinking](covers/real-world-kanban.jpg)",
        published: "2015-06-01",
        slug: "real-world-kanban",
        summary:
          "[Walks through 4 case studies on Kanban](https://pragprog.com/titles/mskanban/).\nKanban helps you see the current situation, but cannot help you decide what to do next;\nthat is up to you!  To be lean you want to PDCA (Plan Do Check Act).\nFocus on the flow, not sprints.",
        title: "Real-World Kanban: Do Less, Accomplish More with Lean Thinking"
      },
      %{
        author: "Henrik Kniberg",
        datetime: "2021-01-01",
        img:
          "![Lean From the Trenches: Managing Large Scale Projects with Kanban](covers/lean-from-the-trenches.jpg)",
        published: "2011-12-01",
        slug: "lean-from-the-trenches",
        summary:
          "A book on a successful project delivery using Kanban.  The project was delivered over a two year timeframe, using Kanban at limit work in progress, Scrum for meetings and XP for software construction (paired programming, test automation).  The project was co-located with up to 60 team members at one time and was very low-tech (whiteboards and sticky notes).  Checkout [author blog](http://blog.crisp.se/author/henrikkniberg) or [book feedback on pragprog](http://pragprog.com/book/hklean/lean-from-the-trenches).\n\nA few items of note\n\n* Tech stories to help capture \"clients don't care about this\" work such as upgrading the database, or fixing the build server\n* Multi-layered Kanban boards to split the overall project from individual teams.\n* Continuous improvement through: Clarity, Communication, and Data\n* Tracking velocity (# features per week, no story points!), and cycle time (weeks per feature)\n* Sprint planning was about the-next-10-features based on business value, people available and feature dependencies",
        title: "Lean From the Trenches: Managing Large Scale Projects with Kanban"
      },
      %{
        author: "Greg McKeown",
        datetime: "2020-01-01",
        img: "![Essentialism: The Disciplined Pursuit of Less](covers/essentialism.jpg)",
        published: "2014-04-14",
        slug: "essentialism",
        summary:
          "[Essentialism: The Disciplined Pursuit of Less](https://gregmckeown.com/books/essentialism/).\nThe Way of the Essentialist involves doing less, but better, so you\ncan make the highest possible contribution.",
        title: "Essentialism"
      },
      %{
        author: "Max Brooks",
        datetime: "2008-01-01",
        img: "![World War Z: An Oral History of the Zombie War](covers/world-war-z.jpg)",
        published: "2007-10-16",
        slug: "world-war-z",
        summary:
          "A look back a the 10-year war against the Zombies.  The book\ntalks through the voices of those who lived the war.",
        title: "World War Z: An Oral History of the Zombie War"
      }
    ]
    |> Enum.map(&to_html/1)
  end

  defp to_html(book) do
    book
    |> Enum.map(fn
      {:summary, markdown} -> {:summary, A4word.Markdown.to_html(markdown)}
      {k, v} -> {k, v}
    end)
    |> Enum.into(%{})
  end
end
