AdminUser.create!([
  {id: 1, email: "admin@example.com", encrypted_password: "$2a$10$mVvlV/HBZxnP8U4.u81.z.3eaza.o8VwKwLaX6EnvVMMNzhcqm2U2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2016-03-22 02:53:22", last_sign_in_at: "2016-03-18 03:11:36", current_sign_in_ip: "::1", last_sign_in_ip: "::1", updated_at: "2016-03-22 02:53:22"}
])
Agency.create!([
  {id: 7, logo: "AHRQ_logo.png", title: "AHRQ", updated_at: "2016-03-31 17:30:38", quick_links: "<p>HHS Guiding Principles and Common Approach</p>\r\n\r\n<p><a href=\"http://www.hhs.gov/open/public-access-guiding-principles/index.html\">http://www.hhs.gov/open/public-access-guiding-principles/index.html</a> M-13-13</p>\r\n\r\n<p><a href=\"https://www.whitehouse.gov/sites/default/files/omb/memoranda/2013/m-13-13.pdf\">https://www.whitehouse.gov/sites/default/files/omb/memoranda/2013/m-13-13.pdf</a></p>\r\n", documents_cited: "<p>AHRQ Public Access to Federally Funded Research</p>\r\n\r\n<p><a href=\"http://www.ahrq.gov/funding/policies/publicaccess/index.html\">http://www.ahrq.gov/funding/policies/publicaccess/index.html</a></p>\r\n", tags: ""},
  {id: 8, logo: "ASPR-logo.png", title: "ASPR", updated_at: "2016-03-30 18:49:14", quick_links: "HHS Guiding Principles and Common Approach\thttp://www.hhs.gov/open/public-access-guiding-principles/index.html", documents_cited: "Office of the Assistant Secretary for Preparedness and Response Public Access to Federally Funded Research: Publications and Data\thttp://www.phe.gov/Preparedness/planning/science/Documents/AccessPlan.pdf", tags: ""},
  {id: 9, logo: "1280px-US_CDC_logo.svg.png", title: "CDC", updated_at: "2016-03-25 18:01:01", quick_links: "", documents_cited: "", tags: nil},
  {id: 11, logo: "2000px-US-DeptOfEducation-Seal.svg__1_.png", title: "Dept. of Ed.", updated_at: "2016-03-28 22:29:52", quick_links: "", documents_cited: "", tags: "education, learning"},
  {id: 10, logo: "United_States_Department_of_Defense_Seal.svg.png", title: "DOD", updated_at: "2016-03-25 18:02:09", quick_links: "", documents_cited: "", tags: nil},
  {id: 12, logo: "DOE_logo.png", title: "DOE", updated_at: "2016-03-25 18:06:13", quick_links: "", documents_cited: "", tags: nil},
  {id: 13, logo: "2000px-US-DeptOfTransportation-Seal.svg.png", title: "DOT", updated_at: "2016-03-25 18:06:50", quick_links: "", documents_cited: "", tags: nil},
  {id: 14, logo: "fda.png", title: "FDA", updated_at: "2016-03-25 18:07:27", quick_links: "", documents_cited: "", tags: nil},
  {id: 5, logo: "NASA_logo.svg.png", title: "NASA", updated_at: "2016-03-25 18:07:53", quick_links: "https://open.nasa.gov/data-requirements-mandates/\r\nhttps://open.nasa.gov/explore/\r\n", documents_cited: "Editor, author, or compiler name (if available). Name of Site. Version number. Name of institution/organization affiliated with the site (sponsor or publisher), date of resource creation (if available). Medium of publication. Date of access.\r\nThe Purdue OWL Family of Sites. The Writing Lab and OWL at Purdue and Purdue U, 2008. Web. 23 Apr. 2008.\r\nFelluga, Dino. Guide to Literary and Critical Theory. Purdue U, 28 Nov. 2003. Web. 10 May 2006.", tags: nil},
  {id: 15, logo: "240px-NIH_logo.svg.png", title: "NIH", updated_at: "2016-03-25 18:09:44", quick_links: "", documents_cited: "", tags: nil},
  {id: 16, logo: "2000px-NIST_logo.svg.png", title: "NIST", updated_at: "2016-03-25 18:10:29", quick_links: "", documents_cited: "", tags: nil},
  {id: 17, logo: "2000px-NOAA_logo.svg.png", title: "NOAA", updated_at: "2016-03-25 18:11:04", quick_links: "", documents_cited: "", tags: nil},
  {id: 18, logo: "2000px-NSF.svg.png", title: "NSF", updated_at: "2016-03-25 18:12:12", quick_links: "", documents_cited: "", tags: nil},
  {id: 19, logo: "2000px-USAID-Logo.svg.png", title: "USAID", updated_at: "2016-03-25 18:13:33", quick_links: "", documents_cited: "", tags: nil},
  {id: 20, logo: "2000px-USDA_logo.svg.png", title: "USDA", updated_at: "2016-03-25 18:14:22", quick_links: "", documents_cited: "", tags: nil},
  {id: 21, logo: "2000px-USGS_logo_green.svg.png", title: "USGS", updated_at: "2016-03-25 18:15:15", quick_links: "", documents_cited: "", tags: nil}
])
Category.create!([
  {id: 1, title: "Principles and Implementation Approach", updated_at: "2016-03-16 03:26:31"},
  {id: 2, title: "Exclusions and limitations in Policy Approach", updated_at: "2016-03-16 18:43:05"}
])
AgencyCategory.create!([
  {id: 64, category_id: 1, agency_id: 9, updated_at: "2016-03-31 02:19:56", currently: "Robert Nesta \"Bob\" Marley, OM (6 February 1945 – 11 May 1981) was a Jamaican reggae singer, songwriter, musician, and guitarist who achieved international fame and acclaim.[1][2] Starting out in 1963 with the group The Wailers, he forged a distinctive songwriting and vocal style that would later resonate with audiences worldwide. The Wailers would go on to release some of the earliest reggae records with producer Lee \"Scratch\" Perry.[3]\r\n\r\nAfter the Wailers disbanded in 1974,[4] Marley pursued a solo career upon his relocation to England that culminated in the release of the album Exodus in 1977, which established his worldwide reputation and produced his status as one of the world's best-selling artists of all time, with sales of more than 75 million records.[5][6] Exodus stayed on the British album charts for fifty-six consecutive weeks. It included four UK hit singles: \"Exodus\", \"Waiting in Vain\", \"Jamming\", and \"One Love\". In 1978 he released the album Kaya, which included the hit singles \"Is This Love\" and \"Satisfy My Soul\".", looking_forward: "Diagnosed with a type of malignant melanoma in 1977, Marley died on 11 May 1981 in Miami at the age of 36. He was a committed Rastafari who infused his music with a sense of spirituality.[7] He is considered one of the most influential musicians of all time and credited with popularizing reggae music around the world, as well as serving as a symbol of Jamaican culture and identity. Marley has also evolved into a global symbol, which has been endlessly merchandised through a variety of mediums."},
  {id: 65, category_id: 2, agency_id: 9, updated_at: "2016-03-31 02:19:56", currently: "n 1963, Bob Marley, Bunny Wailer, Peter Tosh, Junior Braithwaite, Beverley Kelso, and Cherry Smith were called The Teenagers. They later changed the name to The Wailing Rudeboys, then to The Wailing Wailers, at which point they were discovered by record producer Coxsone Dodd, and finally to The Wailers. Their single \"Simmer Down\" for the Coxsone label became a Jamaican #1 in February 1964 selling an estimated 70,000 copies.[26] The Wailers, now regularly recording for Studio One, found themselves working with established Jamaican musicians such as Ernest Ranglin (arranger \"It Hurts To Be Alone\"),[27] the keyboardist Jackie Mittoo and saxophonist Roland Alphonso. By 1966, Braithwaite, Kelso, and Smith had left The Wailers, leaving the core trio of Bob Marley, Bunny Wailer, and Peter Tosh.[28]\r\n\r\nIn 1966, Marley married Rita Anderson, and moved near his mother's residence in Wilmington, Delaware in the United States for a short time, during which he worked as a DuPont lab assistant and on the assembly line at a Chrysler plant, under the alias Donald Marley.[29]\r\n\r\nThough raised as a Catholic, Marley became interested in Rastafari beliefs in the 1960s, when away from his mother's influence.[30] After returning to Jamaica, Marley formally converted to Rastafari and began to grow dreadlocks. The Rastafari proscription against cutting hair is based on the biblical Samson, who as a Nazirite, was expected to make certain religious vows, including the ritual treatment of his hair as described in Chapter Six of the Book of Numbers:\r\n", looking_forward: "Between 1968 and 1972, Bob and Rita Marley, Peter Tosh and Bunny Wailer re-cut some old tracks with JAD Records in Kingston and London in an attempt to commercialise The Wailers' sound. Bunny later asserted that these songs \"should never be released on an album ... they were just demos for record companies to listen to\". In 1968, Bob and Rita visited songwriter Jimmy Norman at his apartment in the Bronx. Norman had written the extended lyrics for Kai Winding's \"Time Is on My Side\" (covered by the Rolling Stones) and had also written for Johnny Nash and Jimi Hendrix.[31] A three-day jam session with Norman and others, including Norman's co-writer Al Pyfrom, resulted in a 24-minute tape of Marley performing several of his own and Norman-Pyfrom's compositions. This tape is, according to Reggae archivist Roger Steffens, rare in that it was influenced by pop rather than reggae, as part of an effort to break Marley into the American charts.[31] According to an article in The New York Times, Marley experimented on the tape with different sounds, adopting a doo-wop style on \"Stay With Me\" and \"the slow love song style of 1960's artists\" on \"Splish for My Splash\".[31] An artist yet to establish himself outside his native Jamaica, Marley lived in Ridgmount Gardens, Bloomsbury, during 1972.[32]\r\n"},
  {id: 62, category_id: 1, agency_id: 7, updated_at: "2016-03-31 17:30:39", currently: "<p>With an area of 22,402,200 square kilometres (8,649,500 sq mi), the Soviet Union was the world&#39;s largest country, a status that is retained by the Russian Federation.[7] Covering a sixth of Earth&#39;s land surface, its size was comparable to that of North America.[8] The European portion accounted for a quarter of the country&#39;s area, and was the cultural and economic center. The eastern part in Asia extended to the Pacific Ocean to the east and Afghanistan to the south, and, except some areas in Central Asia, was much less populous. It spanned over 10,000 kilometres (6,200 mi) east to west across 11 time zones, and over 7,200 kilometres (4,500 mi) north to south. It had five climate zones: tundra, taiga, steppes, desert, and mountains. The Soviet Union had the world&#39;s longest border, like Russia, measuring over 60,000 kilometres (37,000 mi), or 1 1&frasl;2 circumferences of Earth. Two-thirds of it was a coastline. Across the Bering Strait was the United States. The Soviet Union bordered Afghanistan, China, Czechoslovakia, Finland, Hungary, Iran, Mongolia, North Korea, Norway, Poland, Romania, and Turkey from 1945 to 1991. The Soviet Union&#39;s highest mountain was Communism Peak (now Ismoil Somoni Peak) in Tajikistan, at 7,495 metres (24,590 ft). The Soviet Union also included most of the world&#39;s largest lake, the Caspian Sea (shared with Iran), and Lake Baikal, the world&#39;s largest freshwater and deepest lake, an internal body of water in Russia.</p>\r\n", looking_forward: "<p>The last Russian Tsar, Nicholas II, ruled the Russian Empire until his abdication in March 1917 in the aftermath of the February Revolution, due in part to the strain of fighting in World War I, which lacked public support. A short-lived Russian Provisional Government took power, to be overthrown in the October Revolution (N.S. 7 November 1917) by revolutionaries led by the Bolshevik leader Vladimir Lenin.[9] The Soviet Union was officially established in December 1922 with the union of the Russian, Ukrainian, Byelorussian, and Transcaucasian Soviet republics, each ruled by local Bolshevik parties. Despite the foundation of the Soviet state as a federative entity of many constituent republics, each with its own political and administrative entities, the term &quot;Soviet Russia&quot; &ndash; strictly applicable only to the Russian Federative Socialist Republic &ndash; was often applied to the entire country by non-Soviet writers and politicians.</p>\r\n"},
  {id: 63, category_id: 2, agency_id: 7, updated_at: "2016-03-31 17:30:39", currently: "<p>From its creation, the government in the Soviet Union was based on the one-party rule of the Communist Party (Bolsheviks).[17] After the economic policy of &quot;War communism&quot; during the Russian Civil War, as a prelude to fully developing socialism in the country, the Soviet government permitted some private enterprise to coexist alongside nationalized industry in the 1920s and total food requisition in the countryside was replaced by a food tax. The stated purpose of the one-party state was to ensure that capitalist exploitation would not return to the Soviet Union and that the principles of democratic centralism would be most effective in representing the people&#39;s will in a practical manner. Debate over the future of the economy provided the background for a power struggle in the years after Lenin&#39;s death in 1924. Initially, Lenin was to be replaced by a &quot;troika&quot; consisting of Grigory Zinoviev of the Ukrainian SSR, Lev Kamenev of the Russian SFSR, and Joseph Stalin of the Transcaucasian SFSR. On 3 April 1922, Stalin was named the General Secretary of the Communist Party of the Soviet Union. Lenin had appointed Stalin the head of the Workers&#39; and Peasants&#39; Inspectorate, which gave Stalin considerable power. By gradually consolidating his influence and isolating and outmaneuvering his rivals within the party, Stalin became the undisputed leader of the Soviet Union and, by the end of the 1920s, established totalitarian rule. In October 1927, Grigory Zinoviev and Leon Trotsky were expelled from the Central Committee and forced into exile. In 1928, Stalin introduced the First Five-Year Plan for building a socialist economy. In place of the internationalism expressed by Lenin throughout the Revolution, it aimed to build Socialism in One Country. In industry, the state assumed control over all existing enterprises and undertook an intensive program of industrialization. In agriculture, rather than adhering to the &quot;lead by example&quot; policy advocated by Lenin,[18] forced collectivization of farms was implemented all over the country. Famines ensued, causing millions of deaths; surviving kulaks were persecuted and many sent to Gulags to do forced labour.[19] Social upheaval continued in the mid-1930s. Stalin&#39;s Great Purge resulted in the execution or detainment of many &quot;Old Bolsheviks&quot; who had participated in the October Revolution with Lenin. According to declassified Soviet archives, in 1937 and 1938, the NKVD arrested more than one and a half million people, of whom 681,692 were shot. Over those two years that averages to over one thousand executions a day.[20] According to historian Geoffrey Hosking, &quot;...excess deaths during the 1930s as a whole were in the range of 10&ndash;11 million.&quot;[21] Yet despite the turmoil of the mid-to-late 1930s, the Soviet Union developed a powerful industrial economy in the years before World War II.</p>\r\n", looking_forward: "<p>The early 1930s saw closer cooperation between the West and the USSR. From 1932 to 1934, the Soviet Union participated in the World Disarmament Conference. In 1933, diplomatic relations between the United States and the USSR were established when in November, the newly elected President of the United States, Franklin D. Roosevelt chose to formally recognize Stalin&#39;s Communist government and negotiated a new trade agreement between the two nations.[22] In September 1934, the Soviet Union joined the League of Nations. After the Spanish Civil War broke out in 1936, the USSR actively supported the Republican forces against the Nationalists, who were supported by Fascist Italy and Nazi Germany. In December 1936, Stalin unveiled a new Soviet Constitution. The constitution was seen as a personal triumph for Stalin, who on this occasion was described by Pravda as a &quot;genius of the new world, the wisest man of the epoch, the great leader of communism.&quot;[citation needed] By contrast, Western historians and historians from former Soviet occupied countries have viewed the constitution as a meaningless propaganda document.[citation needed]</p>\r\n"},
  {id: 60, category_id: 1, agency_id: 8, updated_at: "2016-03-30 20:34:03", currently: "The Union of Soviet Socialist Republics (Russian: Сою́з Сове́тских Социалисти́ческих Респу́блик, tr. Soyuz Sovetskikh Sotsialisticheskikh Respublik; IPA: [sɐˈjus sɐˈvʲɛtskʲɪx sətsɨəlʲɪsˈtʲitɕɪskʲɪx rʲɪˈspublʲɪk] ( listen)) abbreviated to USSR (Russian: СССР, tr. SSSR) or shortened to the Soviet Union (Russian: Сове́тский Сою́з, tr. Sovetskij Soyuz; IPA: [sɐ'vʲetskʲɪj sɐˈjʉs]), was a Marxist–Leninist state on the Eurasian continent that existed between 1922 and 1991. A union of multiple subnational Soviet republics, its government and economy were highly centralized. The Soviet Union was a one-party state, governed by the Communist Party with Moscow as its capital.", looking_forward: "The Soviet Union had its roots in the October Revolution of 1917, when the Bolsheviks, headed by Vladimir Lenin, overthrew the provisional government that had replaced the Tsar. They established the Russian Socialist Federative Soviet Republic (renamed Russian Soviet Federative Socialist Republic in 1936), beginning a civil war between the revolutionary \"Reds\" and the counter-revolutionary \"Whites.\" The Red Army entered several territories of the former Russian Empire and helped local Communists take power through soviets, which nominally acted on behalf of workers and peasants. In 1922, the Communists were victorious, forming the Soviet Union with the unification of the Russian, Transcaucasian, Ukrainian, and Byelorussian republics. Following Lenin's death in 1924, a troika and a brief power struggle, Joseph Stalin came to power in the mid-1920s. Stalin suppressed all political opposition to his rule, committed the state ideology to Marxism–Leninism (which he created) and initiated a centrally planned economy. As a result, the country underwent a period of rapid industrialization and collectivization which laid the foundation for its victory in World War II and post-war dominance of Eastern Europe. Stalin also fomented political paranoia, and conducted the Great Purge to remove opponents of his from the Communist Party through the mass arbitrary arrest of many people (military leaders, Communist Party members, and ordinary citizens alike) who were then sent to correctional labor camps or sentenced to death."},
  {id: 61, category_id: 2, agency_id: 8, updated_at: "2016-03-30 20:34:03", currently: "At the beginning of World War II, Stalin signed a non-aggression pact with Hitler's Germany; the treaty delayed confrontation between the two countries. In June 1941 the Germans invaded, opening the largest and bloodiest theater of war in history. Soviet war casualties accounted for the highest proportion of the conflict in the cost of acquiring the upper hand over Axis forces at intense battles such as Stalingrad. Soviet forces eventually captured Berlin in 1945. The territory overtaken by the Red Army became satellite states of the Eastern Bloc. The Cold War emerged in 1947 as the Soviet bloc confronted the Western states that united in the North Atlantic Treaty Organization in 1949.", looking_forward: "Following Stalin's death in 1953, a period of political and economic liberalization, known as \"de-Stalinization\" and \"Khrushchev's Thaw\", occurred under the leadership of Nikita Khrushchev. The country developed rapidly, as millions of peasants were moved into industrialized cities. The USSR took an early lead in the Space Race with the first ever satellite and the first human spaceflight. In the 1970s, there was a brief détente of relations with the United States, but tensions resumed when the Soviet Union deployed troops in Afghanistan in 1979. The war drained economic resources and was matched by an escalation of American military aid to Mujahideen fighters.\r\n"}
])