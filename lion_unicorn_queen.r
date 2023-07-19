1. library (tidyverse)
2. library (stringr)
3. library (lubridate)
4. 
5. water_data <- read_csv ("waters.csv")
6. 
7. # Clean up the data
8. water_data$Date <- ymd(water_data$Date)
9. water_data$Name <- str_trim (water_data$Name)
10. 
11. # Aggregate by date
12. water_summary_by_date <- water_data %>%
13.  group_by (Date) %>%
14.  summarise (Total = sum (Amount))
15. 
16. # Aggregate by name
17. water_summary_by_name <- water_data %>%
18.  group_by (Name) %>%
19.  summarise (Total = sum (Amount))
20. 
21. # Aggregate by date and name
22. water_summary_by_date_and_name <- water_data %>%
23.  group_by (Date, Name) %>%
24.  summarise (Total = sum (Amount))
25. 
26. # Find average healing waters by date
27. healing_waters_by_date <- water_summary_by_date %>%
28.  select (Date, Total = mean (Total))
29. 
30. # Find average healing waters by name
31. healing_waters_by_name <- water_summary_by_name %>%
32.  select (Name, Total = mean (Total))
33. 
34. # Find average healing waters by date and name
35. healing_waters_by_date_and_name <- water_summary_by_date_and_name %>%
36.  select (Date, Name, Total = mean (Total))
37. 
38. # Find maximum healing waters by date
39. max_healing_waters_by_date <- water_summary_by_date %>%
40.  select (Date, Total = max (Total))
41. 
42. # Find maximum healing waters by name
43. max_healing_waters_by_name <- water_summary_by_name %>%
44.  select (Name, Total = max (Total))
45. 
46. # Find maximum healing waters by date and name
47. max_healing_waters_by_date_and_name <- water_summary_by_date_and_name %>%
48.  select (Date, Name, Total = max (Total))
49. 
50. # Plot average healing waters by date
51. ggplot (data = healing_waters_by_date, aes ( x = Date, y = Total)) +
52.  geom_line (size = 1.5) +
53.  scale_x_date () +
54.  ggtitle ("Average Healing Waters by Date")
55. 
56. # Plot average healing waters by name
57. ggplot (data = healing_waters_by_name, aes ( x = Name, y = Total)) +
58.  geom_bar (fill = "skyblue", stat = "identity") +
59.  labs (x = "Name", y = "Total") +
60.  ggtitle ("Average Healing Waters by Name")
61. 
62. # Plot maximum healing waters by date
63. ggplot (data = max_healing_waters_by_date, aes ( x = Date, y = Total)) +
64.  geom_line (size = 1.5) +
65.  scale_x_date () +
66.  ggtitle ("Maximum Healing Waters by Date")
67. 
68. # Plot maximum healing waters by name
69. ggplot (data = max_healing_waters_by_name, aes ( x = Name, y = Total)) +
70.  geom_bar (fill = "skyblue", stat = "identity") +
71.  labs (x = "Name", y = "Total") +
72.  ggtitle ("Maximum Healing Waters by Name")
73. 
74. # Plot maximum healing waters by date and name
75. ggplot (data = max_healing_waters_by_date_and_name, aes ( x = Name, y = Total, color = Date)) +
76.  geom_point (size = 3) +
77.  scale_x_discrete () +
78.  ggtitle ("Maximum Healing Waters by Date and Name")
79. 
80. # Write results to CSV files
81. write_csv (healing_waters_by_date, path = "healing_waters_by_date.csv")
82. write_csv (healing_waters_by_name, path = "healing_waters_by_name.csv")
83. write_csv (healing_waters_by_date_and_name, path = "healing_waters_by_date_and_name.csv")
84. write_csv (max_healing_waters_by_date, path = "max_healing_waters_by_date.csv")
85. write_csv (max_healing_waters_by_name, path = "max_healing_waters_by_name.csv")
86. write_csv (max_healing_waters_by_date_and_name, path = "max_healing_waters_by_date_and_name.csv")
87. 
88. # Print results
89. print ("Healing Waters by Date")
90. print (healing_waters_by_date)
91. print ()
92. print ("Healing Waters by Name")
93. print (healing_waters_by_name)
94. print ()
95. print ("Healing Waters by Date and Name")
96. print (healing_waters_by_date_and_name)
97. print ()
98. print ("Maximum Healing Waters by Date")
99. print (max_healing_waters_by_date)
100. print ()
101. print ("Maximum Healing Waters by Name")
102. print (max_healing_waters_by_name)
103. print ()
104. print ("Maximum Healing Waters by Date and Name")
105. print (max_healing_waters_by_date_and_name)
106. 
107. # Output figures
108. ggsave ("healing_waters_by_date.png", plot = last_plot(), width = 7, height = 5, dpi = 120)
109. ggsave ("healing_waters_by_name.png", plot = last_plot(), width = 7, height = 5, dpi = 120)
110. ggsave ("max_healing_waters_by_date.png", plot = last_plot(), width = 7, height = 5, dpi = 120)
111. ggsave ("max_healing_waters_by_name.png", plot = last_plot(), width = 7, height = 5, dpi = 120)
112. ggsave ("max_healing_waters_by_date_and_name.png", plot = last_plot(), width = 7, height = 5, dpi = 120)
113. 
114. # Close out the script
115. print ("\nFinished Analysis of Healing Waters")
116.