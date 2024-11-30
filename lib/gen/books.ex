defmodule Gen.Books do
  def all() do
    [
      %{
        title: "The Infinite Game",
        author: "Simon Sinek",
        summary:
          "The infinite mindset, focusing on long-term purpose and adaptability\nover short-term wins.",
        slug: "the-infinite-game",
        published: "2019-10-115",
        datetime: "2024-11-30",
        img: "![The Infinite Game](covers/the-infinite-game.jpg)"
      },
      %{
        title: "Be Funny or Die",
        author: "Joel Morris",
        summary:
          "How Comedy Works and Why It Matters](covers/be-funny-or-die.jpg)\n\nFraming comedy as Construct, Confirm, and Confound.",
        slug: "be-funny-or-die",
        published: "2024-11-26",
        datetime: "2024-11-26",
        img: "![Be Funny or Die"
      },
      %{
        title: "Meditations for Mortals",
        author: "Oliver Burkeman",
        summary:
          "Embrace mortality.  Draw insights from Marcus Aurelius and learn to\nlet go of trivial concerns.",
        slug: "meditations-for-mortals",
        published: "2024-10-15",
        datetime: "2024-10-15",
        img:
          "![Meditations for Mortals: Four Weeks to Embrace Your Limitations and Make Time for What Counts](covers/meditations-for-mortals.jpg)"
      },
      %{
        title: "The Signal and the Noise",
        author: "Nate Silver",
        summary: "The art and science of marking (more) accurate predictions.",
        slug: "the-signal-and-the-noise",
        published: "2024-09-29",
        datetime: "2024-09-29",
        img:
          "![The Signal and the Noise: Why So Many Predictions Fail-but Some Don't](covers/the-signal-and-the-noise.jpg)"
      },
      %{
        title: "Nudge: The Final Edition",
        author: "Richard H. Thaler & Cass R. Sunstein",
        summary:
          "Improving Decisions About Money, Health, And The Environment](covers/nudge-the-final-edition.jpg)\n\nLearn about choice architecture where subtle nudges—like default options, reminders, or framing—can help individuals make better decisions about their finances, health, and the environment without limiting freedom of choice.",
        slug: "nudge-the-final-edition",
        published: "2024-09-14",
        datetime: "2024-09-14",
        img: "![Nudge: The Final Edition"
      },
      %{
        title: "The Alchemist",
        author: "Paulo Coelho",
        summary:
          "Paulo Coelho's masterpiece tells the magical story of Santiago,\nan Andalusian shepherd boy who yearns to travel in search of a\nworldly treasure as extravagant as any ever found.\n\nThe story of the treasures Santiago finds along the way teaches us,\nas only a few stories can, about the essential wisdom of listening\nto our hearts, learning to read the omens strewn along life's path,\nand, above all, following our dreams.",
        slug: "the-alchemist",
        published: "1989-04-15",
        datetime: "2023-01-27",
        img: "![The Alchemist](covers/the-alchemist.jpg)"
      },
      %{
        title: "On Writing -  A memoir of the Craft",
        author: "Stephen King",
        summary:
          "Part memoir, part master class by one of the bestselling authors of all time,\nthis superb volume is a revealing and practical view of the writer's craft,\ncomprising the basic tools of the trade every writer must have.\nKing's advice is grounded in his vivid memories from childhood through\nhis emergence as a writer, from his struggling early career to his widely\nreported, near-fatal accident in 1999 — and how the inextricable link\nbetween writing and living spurred his recovery. Brilliantly structured,\nfriendly and inspiring, On Writing will empower and entertain everyone\nwho reads it—fans, writers, and anyone who loves a great story well told.",
        slug: "on-writing",
        published: "2000-10-03",
        datetime: "2023-01-24",
        img: "![On Writing -  A memoir of the Craft](covers/on-writing.jpg)"
      },
      %{
        title: "Save The Cat! Writes a Novel",
        author: "Jessica Brody",
        summary:
          "[Save The Cat!  Writes a Novel](https://www.jessicabrody.com/2020/11/how-to-write-your-novel-using-the-save-the-cat-beat-sheet/).\nWriting a book outline is hard. Writing a book in general is hard.\nPlotting a compelling character arc and figuring out what happens\nnext is a challenge for any writer, professional and newbie alike!\nYou can use this handy novel-writing template to outline, write,\nor revise any novel of any genre.",
        slug: "save-the-cat-writes-a-novel",
        published: "2018-10-09",
        datetime: "2023-01-20",
        img: "![Save The Cat! Writes a Novel](covers/save-the-cat-writes-a-novel.jpg)"
      },
      %{
        title: "Zen and the Art of Motorcycle Maintenance",
        author: "Robert M. Pirsig",
        summary:
          "A search for what define \"quality\", which Phaedrus understands to be Tao (aka Zen).",
        slug: "zen-and-the-art-of-motorcycle-maintenance",
        published: "1974-01-01",
        datetime: "2023-01-15",
        img:
          "![Zen and the Art of Motorcycle Maintenance](covers/zen-and-the-art-of-motorcycle-maintenance.jpg)"
      },
      %{
        title: "Build",
        author: "Tony Fadell",
        summary:
          "[Build: An Unorthodox Guide to Making Things Worth Making](https://www.buildc.com).\nHow to think about choosing a job.\nHow to be a better manager.\nHow to approach design.\nHow to start a company.\nHow to run it.\nSo that’s what this book is. An advice encyclopedia. A mentor in a box.",
        slug: "build",
        published: "2022-05-02",
        datetime: "2023-01-15",
        img: "![Build: An Unorthodox Guide to Making Things Worth Making](covers/build.jpg)"
      },
      %{
        title: "War of the Worlds",
        author: "H.G. Wells",
        summary:
          "The original(ish) alien invasion story, starts innocently with\nthe narrator telling the readers\n\"No one would have believed in the last years of the nineteenth\ncentury that this world was being watched keenly and closely by\nintelligences greater than man's...\"",
        slug: "war-of-the-worlds",
        published: "1898-01-01",
        datetime: "2023-01-14",
        img: "![War of the Worlds](covers/war-of-the-worlds.jpg)"
      },
      %{
        title: "Radical Candor",
        author: "Kim Scott",
        summary:
          "[Radical Candor](https://www.radicalcandor.com). Caring Personally while\nChallenging Directly — is guidance that’s both kind and clear,\nspecific and sincere. The antidote to toxic company cultures, it’s a simple concept\nthat’s not always easy to practice.\n\nFrom Radical Candor, Obnoxious Agression, Ruinous Empathy to Manipulative Insincerity.",
        slug: "radical-candor",
        published: "2017-03-01",
        datetime: "2023-01-14",
        img: "![Radical Candor](covers/radical-candor.jpg)"
      },
      %{
        title: "Make Time",
        author: "Kim Scott",
        summary:
          "[Make Time](https://maketime.blog) is not about crushing your to-do list, optimizing every hour,\nor maximizing personal productivity. It’s about rethinking the defaults\nof constant busyness and distraction so you can focus on what matters every day.\n\nWhat's is your highlight of the day, and F-off you infinity pools.",
        slug: "make-time",
        published: "2018-09-01",
        datetime: "2023-01-11",
        img: "![Make Time](covers/make-time.jpg)"
      },
      %{
        title: "Hit Refresh",
        author: "Satya Nadella",
        summary:
          "Hit Refresh is about the transformation happening inside Microsoft and the arrival of the most exciting and disruptive wave of technology humankind has experienced—including mixed reality, artificial intelligence, and quantum computing.",
        slug: "hit-refresh",
        published: "2017-09-26",
        datetime: "2023-01-10",
        img:
          "![Hit Refresh: The Quest to Rediscover Microsoft's Soul and Imagine a Better Future for Everyone](covers/hit-refresh.jpg)"
      },
      %{
        title: "The Lean Startup",
        author: "Eric Ries",
        summary: "Validated learning.",
        slug: "the-lean-startup",
        published: "2011-09-13",
        datetime: "2022-12-23",
        img: "![The Lean Startup](covers/the-lean-startup.jpg)"
      },
      %{
        title: "How to Live",
        author: "Derek Sivers",
        summary:
          "No philosophers are quoted. No -isms are named. Only actionable directives.\nThe end result feels more like poetry than prose.",
        slug: "how-to-live",
        published: "2021-05-28",
        datetime: "2022-12-01",
        img:
          "![How to Live: 27 conflicting answers and one weird conclusion](covers/how-to-live.jpg)"
      },
      %{
        title: "Anything You Want",
        author: "Derek Sivers",
        summary:
          "The journey of CD Baby that was started in 1998 by helping his\nfriends sell their CDs. In 2000, he hired his first employee.\nEight years later, he sold CD Baby for $22 million.",
        slug: "anything-you-want",
        published: "2011-06-29",
        datetime: "2022-11-15",
        img:
          "![Anything You Want: 40 Lessons for a New Kind of Entrepreneur](covers/anything-you-want.jpg)"
      },
      %{
        title: "Exercised",
        author: "Daniel Lieberman",
        summary:
          "If exercise is healthy (so good for you!), why do many people dislike or avoid it?\nThese engaging stories and explanations will revolutionize the way you\nthink about exercising—not to mention sitting, sleeping, sprinting,\nweight lifting, playing, fighting, walking, jogging, and even dancing.",
        slug: "exercised",
        published: "2021-01-05",
        datetime: "2022-11-01",
        img:
          "![Exercised: Why Something We Never Evolved to Do Is Healthy and Rewarding](covers/exercised.jpg)"
      },
      %{
        title: "The Order of Time",
        author: "Carlo Rovelli",
        summary:
          "Why do we remember the past and not the future? What does it mean for time to \"flow\"?\nDo we exist in time or does time exist in us?",
        slug: "the-order-of-time",
        published: "2018-05-08",
        datetime: "2022-11-01",
        img: "![The Order of Time](covers/the-order-of-time.jpg)"
      },
      %{
        title: "How to Keep House While Drowning",
        author: "KC Davis",
        summary: "In other words, messiness is not a moral failing.",
        slug: "how-to-keep-house-while-drowning",
        published: "2022-04-26",
        datetime: "2022-10-01",
        img:
          "![How to Keep House While Drowning: A Gentle Approach to Cleaning and Organizing](covers/how-to-keep-house-while-drowning.jpg)"
      },
      %{
        title: "Surrounded by Idiots",
        author: "Thomas Erikson",
        summary:
          "Author Thomas Erikson explains that there are four key behavior types that define\nhow we interact with and perceive the people around us. Understanding someone's\npattern of behavior is the key to successful communication.\nErikson breaks down the four kinds of behavior types—Reds who are dominant and\ncommanding, Yellows who are social and optimistic, Greens who are laid back and\nfriendly, and Blues who are analytical and precise—and explains how to identify\nand interact with each type of person. Instead of being bogged down with overly\n technical categorizations, the simple four color system allows you to speedily\n identify a friend or coworker and adjust how you speak and share with them.",
        slug: "surrounded-by-idiots",
        published: "2019-07-30",
        datetime: "2022-10-01",
        img:
          "![Surrounded by Idiots: The Four Types of Human Behavior and How to Effectively Communicate with Each in Business (and in Life)](covers/surrounded-by-idiots.jpg)"
      },
      %{
        title: "Four Thousand Weeks",
        author: "Oliver Burkeman",
        summary:
          "The average human lifespan is absurdly, insultingly brief.\nAssuming you live to be eighty, you have just over four thousand weeks.",
        slug: "four-thousand-weeks",
        published: "2021-08-10",
        datetime: "2022-07-01",
        img:
          "![Four Thousand Weeks: Time Management for Mortals](covers/four-thousand-numbers.jpg)"
      },
      %{
        title: "Making Numbers Count",
        author: "Henrik Kniberg",
        summary:
          "How much bigger is a billion than a million?\n\nWell, a million seconds is twelve days. A billion seconds is…thirty-two years.",
        slug: "making-numbers-count",
        published: "2022-01-11",
        datetime: "2022-07-01",
        img:
          "![Making Numbers Count: The Art and Science of Communicating Numbers](covers/making-numbers-count.jpg)"
      },
      %{
        title: "Great at Work",
        author: "Thomas Erikson",
        summary:
          "Why do some people perform better at work than others? This deceptively simple question\ncontinues to confound professionals in all sectors of the workforce. Now,\nafter a unique, five-year study of more than 5,000 managers and employees,\nMorten Hansen reveals the answers in his \"Seven Work Smarter Practices\" that can\nbe applied by anyone looking to maximize their time and performance.",
        slug: "great-at-work",
        published: "2018-01-30",
        datetime: "2022-06-01",
        img:
          "![Great at Work: How Top Performers Do Less, Work Better, and Achieve More](covers/great-at-work.jpg)"
      },
      %{
        title: "Do Nothing",
        author: "Celeste Headlee",
        summary:
          "Why do we measure our time in terms of efficiency instead of meaning? Why can't we just take a break?",
        slug: "do-nothing",
        published: "2020-03-10",
        datetime: "2022-02-01",
        img:
          "![Do Nothing: How to Break Away from Overworking, Overdoing, and Underliving](covers/do-nothing.jpg)"
      },
      %{
        title: "The Mom Test",
        author: "Rob Fitzpatrick",
        summary:
          "They say you shouldn't ask your mom whether\nyour business is a good idea,\nbecause she loves you and will lie to you.",
        slug: "the-mom-test",
        published: "2019-03-22",
        datetime: "2022-02-01",
        img:
          "![The Mom Test: How to Talk to Customers & Learn if Your Business is a Good Idea When Everyone is Lying to You](covers/the-mom-test.jpg)"
      },
      %{
        title: "Effortless",
        author: "Greg McKeown",
        summary:
          "[Effortless](https://gregmckeown.com/books/effortless/).\nGetting ahead doesn’t have to be as hard as we make it.\nNo matter what challenges or obstacles we face, there is a better way:\ninstead of pushing ourselves harder, we can find an easier path.\nEffortless offers actionable advice for making the most essential\nactivities the easiest ones, so you can achieve the results you want,\nwithout burning out.",
        slug: "effortless",
        published: "2021-04-26",
        datetime: "2021-12-20",
        img: "![Effortless](covers/effortless.jpg)"
      },
      %{
        title: "Dune",
        author: "Frank Herbert",
        summary:
          "Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides,\nwho would become the mysterious man known as Muad'dib. He would avenge the\ntraitorous plot against his noble family—and would bring to fruition humankind's\nmost ancient and unattainable dream.",
        slug: "dune",
        published: "1965-08-01",
        datetime: "2021-12-20",
        img: "![Dune: Book One in the Dune Chronicles](covers/dune.jpg)"
      },
      %{
        title: "The Minimalist Entrepreneur",
        author: "Sahil Lavingia",
        summary:
          "The Minimalist Entrepreneur teaches founders how to:\n\n* start then learn\n* build a community, then solve a problem for them\n* charge for something even before you've built anything\n* avoid running out of money and, more importantly, energy\n* run a tight ship amid the rise of the gig economy and remote work\n* own a business without it owning you back.",
        slug: "the-minimalist-entrepreneur",
        published: "2021-10-26",
        datetime: "2021-11-30",
        img:
          "![The Minimalist Entrepreneur: How Great Founders Do More with Less](covers/the-minimalist-entrepreneur.jpg)"
      },
      %{
        title: "Radical Relevance",
        author: "Bill Cates",
        summary:
          "Sharpen Your Marketing Message - Cut Through the Noise - Win More Ideal Clients Radical\nRelevance will help you cut through the daily barrage of message overload your\nprospects experience, to reach the right people at the right time with the right\nmessage.",
        slug: "radical-relevance",
        published: "2019-10-26",
        datetime: "2021-11-20",
        img:
          "![Radical Relevance: Sharpen Your Marketing Message – Cut Through the Noise – Win More Ideal Clients](covers/radical-relevance.jpg)"
      },
      %{
        title: "The End of the World is Just the Beginning",
        author: "Peter Zeihan",
        summary:
          "A world ending. A world beginning. Zeihan brings readers along for an\nilluminating (and a bit terrifying) ride packed with foresight, wit,\nand his trademark irreverence.",
        slug: "the-end-of-the-world-is-just-the-beginning",
        published: "2022-06-14",
        datetime: "2021-01-25",
        img:
          "![The End of the World is Just the Beginning](covers/the-end-of-the-world-is-just-the-beginning.jpg)"
      },
      %{
        title: "The 10% Entrepreneur: Live Your Startup Dream Without Quitting Your Day Job",
        author: "Patrick J. McGinnis",
        summary:
          "A detailed look at the mechanics of a side hustle.\n\nThe path to a 10% entrepreneur can be an investment of cash, time, and/or expertise\nworking as a founder, angel or adviser.",
        slug: "10-percent-entrepreneur",
        published: "2016-04-12",
        datetime: "2021-01-01",
        img:
          "![The 10% Entrepreneur: Live Your Startup Dream Without Quitting Your Day Job](covers/10-percent-entrepreneur.jpg)"
      },
      %{
        title: "1984",
        author: "George Orwell",
        summary:
          "Finally read the book.\n\nWinston is a rank-and-file worker who secretly hates the Party and dreams of rebellion.\n\nFelt like the Matrix's circular illusion of control.  Thoroughly enjoyed it.",
        slug: "1984",
        published: "1949-06-08",
        datetime: "2021-01-01",
        img: "![1984](covers/1984.jpg)"
      },
      %{
        title:
          "10% Happier: How I Tamed the Voice in My Head, Reduced Stress Without Losing My Edge, and Found Self-Help That Actually Works - A True Story",
        author: "Dan Harris",
        summary:
          "The book starts as a life story of journalist covering the typical topics of sex, drugs and public life.\n\nHarris eventually gets into his discovery of mindfulness and meditation.",
        slug: "10-percent-happier",
        published: "2019-04-16",
        datetime: "2021-01-01",
        img:
          "![10% Happier: How I Tamed the Voice in My Head, Reduced Stress Without Losing My Edge, and Found Self-Help That Actually Works - A True Story](covers/10-percent-happier.jpg)"
      },
      %{
        title: "12 Rules for Life: An Antidote to Chaos",
        author: "Jordan B. Peterson",
        summary: "I couldn't get into this book, probably me, only slightly the author.",
        slug: "12-rules-for-life",
        published: "2018-01-12",
        datetime: "2021-01-01",
        img: "![12 Rules for Life: An Antidote to Chaos](covers/12-rules-for-life.jpg)"
      },
      %{
        title: "Never Split the Difference: Negotiating As If Your Life Depended On It",
        author: "Chriss Voss",
        summary:
          "Get your opposition to work to solve your problems.  \"How am I going to do that?\".\n\nGreat stories, practical advice.\n\nI found the title mis-leading as I thought it would be a more of a \"winner takes all\" approach, but really it's not (except maybe the story about buying his red truck).",
        slug: "never-split-the-difference",
        published: "2016-05-17",
        datetime: "2021-01-01",
        img: "![never-split-the-difference](covers/never-split-the-difference.jpg)"
      },
      %{
        title: "Real-World Kanban: Do Less, Accomplish More with Lean Thinking",
        author: "Mattias Skarin",
        summary:
          "[Walks through 4 case studies on Kanban](https://pragprog.com/titles/mskanban/).\nKanban helps you see the current situation, but cannot help you decide what to do next;\nthat is up to you!  To be lean you want to PDCA (Plan Do Check Act).\nFocus on the flow, not sprints.",
        slug: "real-world-kanban",
        published: "2015-06-01",
        datetime: "2021-01-01",
        img:
          "![Real-World Kanban: Do Less, Accomplish More with Lean Thinking](covers/real-world-kanban.jpg)"
      },
      %{
        title: "Lean From the Trenches: Managing Large Scale Projects with Kanban",
        author: "Henrik Kniberg",
        summary:
          "A book on a successful project delivery using Kanban.  The project was delivered over a two year timeframe, using Kanban at limit work in progress, Scrum for meetings and XP for software construction (paired programming, test automation).  The project was co-located with up to 60 team members at one time and was very low-tech (whiteboards and sticky notes).  Checkout [author blog](http://blog.crisp.se/author/henrikkniberg) or [book feedback on pragprog](http://pragprog.com/book/hklean/lean-from-the-trenches).\n\nA few items of note\n\n* Tech stories to help capture \"clients don't care about this\" work such as upgrading the database, or fixing the build server\n* Multi-layered Kanban boards to split the overall project from individual teams.\n* Continuous improvement through: Clarity, Communication, and Data\n* Tracking velocity (# features per week, no story points!), and cycle time (weeks per feature)\n* Sprint planning was about the-next-10-features based on business value, people available and feature dependencies",
        slug: "lean-from-the-trenches",
        published: "2011-12-01",
        datetime: "2021-01-01",
        img:
          "![Lean From the Trenches: Managing Large Scale Projects with Kanban](covers/lean-from-the-trenches.jpg)"
      },
      %{
        title: "Essentialism",
        author: "Greg McKeown",
        summary:
          "[Essentialism: The Disciplined Pursuit of Less](https://gregmckeown.com/books/essentialism/).\nThe Way of the Essentialist involves doing less, but better, so you\ncan make the highest possible contribution.",
        slug: "essentialism",
        published: "2014-04-14",
        datetime: "2020-01-01",
        img: "![Essentialism: The Disciplined Pursuit of Less](covers/essentialism.jpg)"
      },
      %{
        title: "World War Z: An Oral History of the Zombie War",
        author: "Max Brooks",
        summary:
          "A look back a the 10-year war against the Zombies.  The book\ntalks through the voices of those who lived the war.",
        slug: "world-war-z",
        published: "2007-10-16",
        datetime: "2008-01-01",
        img: "![World War Z: An Oral History of the Zombie War](covers/world-war-z.jpg)"
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
