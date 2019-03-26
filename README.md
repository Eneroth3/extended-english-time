# Extended English Time

The English speaking world often uses 12-hour time, with latin abbreviations to specify what 12 hour interval you are referring to. This library provides extended support for English-inspired time formats, such a a 6 hour time and 3 hour time.

## How to Read These Times

When reading a non-24-hour time, the abbreviation specifies what number of clock intervals are added to the hours. In 12-hour format, AM stands for Ante Meridiem (forenoon; add 0 hours) and PM for Post Meridiem (afternoon; add 12 hours). For instance 6:00 PM means 18:00.

In the 6 hour format, the full day is divided into 4 intervals. These are Ante Ante Meridiem (AAM), Ante Post Meridiem (APM), Post Ante Meridiem (PAM) and Post Post Meridiem (PPM). The same logic extends to the 3 hour format. For instance 1:14 PAPM reads as 16:14 (1 + 1 * 12 + 0 * 6 + 1 * 3 hours).

## Technical Limitations

Currently the 24/2^N-hour format doesn't work for values of N larger than 3, e.g. the 1,5 hour format or the 0,75 hour format. See #1.
