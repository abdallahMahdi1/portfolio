import 'package:flutter/material.dart';
import 'dart:js' as js;

class SalesAnalysis extends StatelessWidget {
  const SalesAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
        body: SingleChildScrollView(
      primary: true,
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05, vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Text(
              "Electroincs Store Sales Analysis",
              style: textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [
                    'https://github.com/abdallahMahdi1/projects/blob/main/Python%20Analysis/Sales%20Analysis/sales%20analysis.ipynb'
                  ]);
                  Spacer();
                },
                child: Text(
                  "GitHub Code",
                  style: textTheme.titleSmall,
                ),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [
                    'https://github.com/abdallahMahdi1/projects/raw/main/Python%20Analysis/Sales%20Analysis/Sales_Data.rar'
                  ]);
                },
                child: Text(
                  "Dataset",
                  style: textTheme.titleSmall,
                ),
              ),
              Text(
                "5 min read",
                style: textTheme.titleSmall,
              ),
            ],
          ),
          const Divider(),
          const SizedBox(height: 10),
          Text(
            "Objective :",
            style: textTheme.bodyLarge,
          ),
          const Divider(),
          Text(
            "The primary objective of this analysis is to provide comprehensive insights into key performance indicators (KPIs) for the store. By Answering this questions: \n 1:Which month saw the highest sales? What was the monthly income? \n 2:What city made the largest sales of products? \n 3:What time should we display advertisements to maximize likelihood of customer's buying product? \n 4: What product sold the most? Why do you think it sold the most?",
            style: textTheme.bodyMedium,
          ),
          Text(
            "tools :",
            style: textTheme.bodyLarge,
          ),
          const Divider(),
          Text(
            "Due to the dataset's complexity, which is spread across 12 sheets, each dedicated to a specific month, and with an average of over 15,000 rows per sheet, utilizing Excel for analysis becomes challenging. In such a scenario, Python stands out as an ideal tool for managing and analyzing this extensive dataset effectively. ",
            style: textTheme.bodyMedium,
          ),
          Text(
            "Phases :",
            style: textTheme.bodyLarge,
          ),
          const Divider(),
          Text(
            "Import the necessary libraries, including pandas and matplotlib. Next, merge all files into a single CSV file that consolidates all the data, initiating the subsequent steps of the process. ",
            style: textTheme.bodyMedium,
          ),
          Text(
            "Clean up the data!",
            style: textTheme.bodyLarge,
          ),
          Text(
            "The first step in this is figuring out what we need to clean. I have found in practice, that you find things you need to clean as you perform operations and get errors. Based on the error, you decide how you should go about cleaning the data. by applying following steps.",
            style: textTheme.bodyMedium,
          ),
          Text(
            "\n 1: Drop rows of NAN \n 2: Get rid of text in order date column \n 3 :Make columns correct type",
            style: textTheme.bodyMedium,
          ),
          Text(
            "Data Exploration!",
            style: textTheme.bodyLarge,
          ),
          Text(
            "The first step in this is figuring out what we need to clean. I have found in practice, that you find things you need to clean as you perform operations and get errors. Based on the error, you decide how you should go about cleaning the data. by applying following steps.",
            style: textTheme.bodyMedium,
          ),
          Text(
              "Question 1: What was the best month for sales? How much was earned that month?",
              style: textTheme.bodyLarge),
          Text(
              "To answer the above question frist we most have Month and Sales coulmn, after adding the month and Sales coulmn now we can analysis and drow polt by using gruopby function as show result below . ",
              style: textTheme.bodyMedium),
          Center(
              child: Image.asset(
            'assets/images/best_month.png',
            height: 400,
            width: 400,
          )),
          Center(
            child: Text(
                "As Show above that is December is best selling Month with 4613443 \$ ",
                style: textTheme.bodyMedium),
          ),
          Text("2:What city made the largest sales of products?",
              style: textTheme.bodyLarge),
          Text(
              "after adding city coulmn we can preform our analysis fuction to show up the following result below . ",
              style: textTheme.bodyMedium),
          Center(
              child: Image.asset(
            'assets/images/best_city.png',
            height: 400,
            width: 400,
          )),
          Center(
            child: Text(
                "As Show above that is san frans is best selling Month with 8262203.91 \$ ",
                style: textTheme.bodyMedium),
          ),
          Text(
              "3:What time should we display advertisements to maximize likelihood of customer's buying product? ",
              style: textTheme.bodyLarge),
          Text(
              "after adding Hour adn Minute  coulmn we can preform our analysis fuction to show up the following result below . ",
              style: textTheme.bodyMedium),
          Center(
              child: Image.asset(
            'assets/images/best_time.png',
            height: 400,
            width: 400,
          )),
          Center(
            child: Text(
                "As Show above that is between 11-12 and 20 is best showing time  ",
                style: textTheme.bodyMedium),
          ),
          Text(
              "4: What product sold the most? Why do you think it sold the most? ",
              style: textTheme.bodyLarge),
          Center(
              child: Image.asset(
            'assets/images/best_prod.png',
            height: 400,
            width: 400,
          )),
          Center(
            child: Text(
                "As Show above that is AAA Batteries(4-pack) is best selling product   ",
                style: textTheme.bodyMedium),
          ),
          const Divider(),
        ]),
      ),
    ));
  }
}
