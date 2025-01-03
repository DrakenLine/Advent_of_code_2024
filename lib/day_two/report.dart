import 'package:advent_of_code_2024/utils.dart';

class Report {
  final String value = """
  19 21 24 27 24
85 87 89 92 93 96 98 98
2 5 6 7 8 12
63 66 69 72 75 82
18 21 23 26 28 26 27 28
16 19 21 19 20 22 23 22
37 39 37 38 41 42 44 44
18 20 17 20 24
50 51 54 53 58
73 76 77 80 83 83 84 85
30 31 33 33 36 39 40 37
50 52 52 53 54 55 55
49 52 54 56 59 59 63
42 44 46 46 49 52 53 59
40 43 45 49 52 54
87 89 93 96 95
66 69 70 71 73 77 78 78
30 32 33 36 39 43 47
8 9 12 16 18 21 22 28
80 83 84 85 91 92
75 76 77 84 87 89 88
8 10 12 17 18 21 22 22
14 15 20 23 26 29 33
13 15 18 23 26 33
43 41 43 44 45 47 49
77 74 77 78 79 82 79
55 53 54 55 55
73 70 72 75 78 79 81 85
46 44 46 49 50 51 57
72 70 69 72 73 75 78
57 55 53 54 57 59 60 57
21 19 20 22 21 23 23
11 9 10 13 10 12 13 17
36 33 34 33 34 35 42
39 38 38 41 44
75 72 75 75 78 75
56 53 56 56 56
36 33 36 38 38 40 44
55 54 54 55 57 58 65
27 25 28 31 35 37 39
81 79 83 85 83
19 16 19 23 26 26
27 25 26 29 33 37
72 71 74 75 79 81 88
34 31 32 35 41 44 45 48
69 67 70 71 72 77 74
44 43 48 51 51
57 54 57 63 66 70
16 14 16 22 23 30
6 6 9 10 11 13
7 7 8 10 11 12 13 11
81 81 84 85 88 88
53 53 54 55 59
28 28 31 34 36 37 40 45
60 60 63 61 62
63 63 65 63 66 67 65
36 36 34 37 37
79 79 76 79 83
27 27 29 28 31 32 37
91 91 91 93 96 97
44 44 46 49 52 52 55 54
72 72 73 76 76 77 77
5 5 5 7 11
4 4 5 7 9 9 15
51 51 53 56 60 63 66
2 2 3 7 10 11 10
61 61 65 66 66
5 5 8 12 16
53 53 57 58 59 62 64 69
18 18 20 21 26 28 30 32
71 71 72 73 80 81 82 79
82 82 85 87 92 92
61 61 63 65 72 74 78
54 54 60 61 64 71
58 62 65 67 68 71
47 51 53 56 57 60 63 60
12 16 18 20 23 23
80 84 87 89 90 93 97
25 29 31 32 34 37 43
38 42 45 43 44
72 76 77 74 77 76
56 60 59 60 60
64 68 71 70 74
2 6 9 10 7 12
17 21 21 23 24 25 27 30
15 19 19 21 18
49 53 56 57 57 59 59
5 9 9 10 12 14 18
82 86 87 87 93
50 54 56 58 62 63 66 69
88 92 96 97 94
24 28 32 34 37 38 41 41
15 19 22 26 27 30 34
59 63 67 68 73
71 75 80 81 83 84
8 12 14 20 17
67 71 77 80 80
35 39 42 49 51 55
51 55 62 64 65 71
40 45 48 50 52
46 51 54 56 55
84 89 90 93 96 96
50 57 60 62 66
23 28 31 33 34 40
59 65 63 66 68
89 94 95 96 93 91
75 82 81 82 82
75 82 85 84 86 90
48 55 57 55 60
74 81 82 83 84 84 85
35 42 42 44 46 45
15 22 25 25 25
44 50 51 52 52 56
31 38 38 39 42 47
50 55 58 60 64 66 68 69
11 18 19 20 24 21
4 10 12 16 19 19
16 23 24 28 29 33
18 23 27 29 36
51 58 64 66 68 71 73
35 42 44 46 51 52 53 51
15 22 28 29 30 30
66 73 80 82 83 87
21 26 32 35 36 42
50 48 47 46 43 40 43
92 89 87 85 84 83 80 80
49 46 45 44 43 40 36
88 86 84 82 79 73
16 14 13 12 11 13 12 9
47 46 48 46 44 47
17 16 17 14 13 10 10
60 59 61 60 56
68 65 62 65 60
22 21 18 18 15 12
28 25 24 22 21 21 19 20
76 74 74 71 71
73 72 69 68 68 65 61
85 84 84 83 81 74
46 44 40 37 35
91 90 86 84 82 83
65 62 59 55 54 52 50 50
55 53 52 48 46 43 40 36
39 36 34 30 28 22
22 20 17 12 10 8
33 30 24 22 21 20 22
96 94 88 86 86
97 94 92 91 84 83 81 77
31 29 24 23 17
11 12 10 8 6 5
25 28 27 25 22 21 22
24 25 23 21 20 18 18
65 68 66 65 62 59 58 54
67 68 67 65 62 60 55
53 54 55 53 50 49
72 74 75 73 71 74
76 78 81 78 77 77
91 92 91 93 90 89 85
70 73 72 74 73 66
91 93 93 92 89 88 85
18 21 21 19 16 19
30 32 29 29 29
92 93 93 91 87
14 17 15 12 10 10 3
61 62 58 55 54 51 50 48
15 17 15 11 12
71 73 71 69 68 64 61 61
33 35 31 29 26 24 20
90 91 87 86 79
32 34 29 26 24
91 92 91 85 86
51 53 52 45 43 43
27 30 27 22 19 17 13
94 97 90 87 85 80
11 11 10 9 7 4 2
67 67 64 63 62 64
83 83 80 77 75 75
79 79 76 74 71 69 65
14 14 11 10 3
33 33 30 27 29 26
70 70 67 69 66 65 64 65
75 75 73 75 75
89 89 87 84 81 82 78
72 72 69 71 69 66 60
25 25 25 22 21
55 55 52 52 50 53
29 29 27 26 26 25 25
53 53 53 51 50 49 46 42
27 27 27 26 23 17
85 85 83 79 77 76
76 76 74 72 68 71
55 55 52 49 47 46 42 42
76 76 74 70 67 65 64 60
58 58 56 53 49 47 44 37
13 13 7 5 2 1
73 73 71 68 62 65
44 44 42 37 35 33 30 30
85 85 82 76 75 71
94 94 91 84 83 80 77 72
74 70 68 65 63 61
81 77 74 72 69 72
86 82 80 79 76 73 72 72
98 94 92 91 88 85 84 80
29 25 23 21 18 16 15 8
96 92 91 89 90 88 87 85
73 69 66 64 61 60 61 63
89 85 82 84 81 78 77 77
70 66 63 61 63 59
92 88 85 84 86 85 78
92 88 86 86 85 84 83
55 51 51 48 47 45 42 43
92 88 88 87 85 85
98 94 92 90 87 84 84 80
44 40 40 38 35 34 28
19 15 11 10 9 7
78 74 70 67 66 63 66
67 63 59 58 58
57 53 50 48 44 42 38
21 17 15 11 10 8 7 2
74 70 69 63 61
19 15 10 8 5 4 6
73 69 66 61 61
53 49 43 42 39 35
78 74 73 68 66 60
30 24 23 20 19 17 14 13
48 43 42 41 43
56 51 48 46 45 43 42 42
55 50 48 45 42 41 37
56 49 48 47 44 41 35
35 30 27 28 27 26 24 23
88 83 82 80 79 81 84
82 77 80 77 75 75
85 80 77 80 76
75 69 72 70 63
26 19 18 18 16
77 72 72 71 73
97 92 90 90 87 86 86
30 23 22 21 21 18 14
76 71 70 69 68 68 63
68 61 57 56 54 53 51 48
26 20 18 14 12 10 12
57 52 48 46 44 44
91 85 82 78 75 73 71 67
72 66 62 59 54
37 31 29 24 22
90 83 76 73 74
63 58 56 53 48 48
71 66 60 57 54 51 47
42 37 34 31 25 18
18 21 23 24 26 27 26
17 20 23 24 26 29 32 32
82 83 85 86 88 90 94
26 27 28 29 32 39
38 39 40 39 40 42 45
58 61 64 66 69 68 70 67
22 24 25 22 23 23
57 60 61 59 61 64 65 69
5 7 8 6 7 10 12 18
43 46 49 49 52 55 57 59
43 46 46 49 48
78 80 82 85 85 85
34 36 39 39 43
20 23 23 26 31
61 63 67 68 70
17 19 21 25 26 25
43 45 49 52 54 56 56
48 49 51 52 55 56 60 64
15 17 18 22 24 27 34
69 72 77 80 83 84 86 88
45 47 49 56 57 59 58
56 58 64 65 68 68
3 6 7 8 13 14 16 20
78 81 82 89 90 96
24 23 26 28 31 33 35
88 86 88 89 87
26 23 25 28 30 31 31
30 29 32 34 38
64 62 65 68 69 75
77 76 75 77 80 81
55 54 55 54 56 54
87 84 86 84 86 88 88
7 5 3 4 7 9 12 16
64 61 64 63 69
41 38 41 41 42
12 10 12 12 14 15 12
50 49 50 50 51 51
79 78 79 81 81 84 88
52 50 51 51 56
5 3 5 7 11 14 16
85 83 87 88 90 93 90
82 80 84 87 88 91 91
15 12 16 18 22
82 79 80 83 87 89 96
14 13 15 20 22
49 47 48 49 52 57 58 55
26 23 28 31 31
10 8 11 13 18 19 23
79 76 77 79 84 91
47 47 50 53 55 58 61 64
85 85 86 88 91 89
35 35 38 39 41 44 44
42 42 44 46 49 53
83 83 86 87 89 92 98
21 21 22 19 21
36 36 37 40 41 38 35
58 58 60 62 60 60
11 11 14 15 13 15 19
47 47 46 49 54
23 23 24 26 26 28 31 32
79 79 81 82 82 81
44 44 44 46 47 49 50 50
35 35 38 41 41 43 47
52 52 52 54 56 59 65
2 2 4 7 8 10 14 15
75 75 77 81 83 86 87 86
19 19 23 24 27 28 31 31
79 79 83 85 87 91
23 23 27 29 35
60 60 61 62 69 72 75
12 12 19 22 24 22
45 45 52 55 55
60 60 61 68 71 73 74 78
40 40 46 47 49 51 54 59
17 21 23 25 26 28 30
22 26 27 30 33 34 36 35
77 81 83 84 86 88 90 90
7 11 14 15 18 22
6 10 13 16 22
65 69 71 74 75 76 75 78
69 73 71 73 76 75
75 79 77 78 80 83 84 84
36 40 43 46 49 47 51
52 56 58 60 58 59 64
28 32 33 35 35 36 39
23 27 28 28 27
33 37 38 38 39 39
77 81 83 83 86 90
34 38 40 41 42 44 44 49
86 90 94 97 98
48 52 55 59 57
28 32 36 37 40 43 45 45
13 17 21 23 26 30
40 44 48 51 57
12 16 23 26 27 30
14 18 21 24 26 29 35 34
31 35 42 43 44 44
18 22 24 26 32 36
31 35 37 39 45 51
69 76 79 82 85 87 89 91
79 86 89 91 89
68 75 77 78 79 82 82
28 34 35 38 41 43 45 49
65 71 74 75 76 82
66 71 74 72 75
22 27 25 27 30 28
82 88 87 88 91 93 94 94
21 28 30 29 32 34 38
85 90 92 91 96
7 14 14 16 18 21 22 23
19 25 25 27 29 32 33 32
47 54 57 57 59 60 60
44 51 51 52 55 59
63 70 70 71 73 78
12 17 19 23 25 26
23 28 32 35 37 34
50 56 59 60 63 67 70 70
53 59 63 66 70
69 76 78 82 89
60 65 66 67 70 76 77
37 44 46 51 48
34 41 47 48 48
69 76 77 84 86 90
42 49 50 55 62
49 47 46 44 43 44
83 81 78 75 75
13 11 8 6 5 1
75 72 69 68 67 65 59
34 32 30 31 28 25 22
75 73 72 74 76
82 79 78 77 75 73 76 76
72 71 72 71 67
63 61 59 56 57 50
19 17 17 16 14
34 33 33 30 31
98 96 95 95 93 93
28 25 25 23 21 18 14
18 15 13 12 10 10 3
62 60 59 57 54 52 48 47
98 96 95 91 92
20 18 15 12 11 9 5 5
27 25 24 20 17 15 11
96 93 91 89 85 83 81 74
77 74 68 66 65 62
74 72 71 65 67
26 23 20 18 13 10 10
68 65 58 55 53 51 47
61 60 57 56 53 51 46 40
32 34 31 30 28
37 39 36 35 34 35
86 88 86 84 83 80 80
39 41 38 37 36 33 29
38 39 37 35 34 31 24
84 86 83 80 82 79
57 58 55 54 51 48 49 51
78 81 82 81 80 79 78 78
40 41 39 41 40 39 35
41 43 40 39 38 37 39 34
72 74 72 72 69 66
16 18 18 15 14 11 12
27 30 29 27 24 22 22 22
52 54 53 53 51 48 44
58 59 58 57 56 56 50
34 36 33 31 30 27 23 22
38 41 38 34 37
85 88 85 81 81
64 67 64 61 60 56 53 49
23 24 20 19 14
28 30 25 24 22
70 73 68 65 64 63 60 62
52 54 51 44 42 42
96 97 92 91 87
52 53 46 43 40 37 35 29
68 68 66 64 63 61 60 59
51 51 48 46 44 42 40 41
82 82 79 76 74 74
23 23 20 17 16 13 11 7
72 72 69 67 64 61 60 53
27 27 24 23 24 23 21 18
29 29 27 25 28 29
59 59 62 60 57 56 55 55
98 98 95 93 91 94 90
70 70 68 67 66 65 66 60
80 80 79 76 76 74 72 71
69 69 68 65 62 61 61 64
21 21 18 16 14 14 12 12
36 36 34 34 30
16 16 15 12 10 10 3
70 70 66 63 61 60 58
44 44 40 38 35 38
54 54 51 50 46 43 43
29 29 26 22 18
21 21 18 16 12 6
59 59 57 51 49 47 46 43
46 46 45 44 38 40
90 90 88 83 83
29 29 28 25 23 17 13
99 99 94 93 91 89 86 79
68 64 62 60 58 56 55
98 94 91 89 90
56 52 50 47 45 45
78 74 71 70 68 65 61
27 23 20 19 18 15 9
92 88 86 89 86
52 48 45 48 50
75 71 68 70 70
23 19 18 15 13 15 13 9
96 92 94 93 87
76 72 72 70 68
80 76 74 74 73 76
65 61 59 59 58 58
91 87 85 84 82 80 80 76
74 70 67 66 66 65 58
62 58 54 52 50 49
88 84 80 79 77 74 72 74
14 10 9 7 3 3
65 61 58 56 52 48
20 16 12 10 8 1
63 59 58 55 54 48 46 45
57 53 51 46 49
93 89 82 79 76 76
52 48 47 45 43 36 32
98 94 92 87 85 82 81 76
23 18 15 14 11 9
82 77 75 72 71 70 72
61 55 54 53 50 49 47 47
37 32 29 27 24 21 17
82 75 74 71 70 65
12 7 9 7 5 3
62 57 59 56 57
68 62 59 57 54 57 57
73 66 65 66 64 62 58
37 32 30 27 26 29 22
98 93 93 91 88 86 85 84
27 21 21 19 17 14 11 13
69 64 63 63 63
82 77 75 72 69 69 67 63
71 64 61 61 58 53
15 9 5 4 3
53 47 44 43 41 37 39
18 12 11 7 5 4 2 2
75 69 66 63 59 56 55 51
97 91 87 86 84 81 78 73
66 59 57 55 50 49 47 44
73 66 63 60 57 51 48 49
58 52 47 46 43 43
31 25 24 17 16 12
46 40 38 37 32 31 26
68 70 73 72 70
28 29 28 28 25 19
21 26 23 25 26 30
82 76 73 71 64 64
78 75 82 83 89
88 89 89 87 85 85
51 54 52 54 53 55
51 53 54 61 64 68
60 61 62 63 67 70 72 75
23 16 15 12 13 11 8 5
6 8 10 12 13 18
48 41 39 38 35 34 31 31
74 70 64 62 61 57
30 27 29 34 37 41
24 24 23 22 18 17 14 10
67 64 63 62 61 59 55
98 94 93 91 94
11 12 9 12 15 18 25
86 82 81 76 74 77
26 20 19 17 16 11 9 7
69 69 65 64 62 59 58 52
90 88 90 94 91
74 75 73 71 72 72
40 35 32 26 25 22 18
4 3 9 11 13 16 19 18
34 34 35 37 37
69 73 76 78 79 80 79
64 64 61 59 57 60
30 26 23 21 17 15
44 48 50 54 54
16 16 15 15 8
30 30 28 25 21 24
96 96 92 91 90 89
50 46 43 41 39 40 33
30 29 30 31 32 32 33 33
44 50 51 52 52
21 19 20 23 23 27
48 48 49 46 49 51 49
67 62 60 57 56 53 50
78 82 84 86 89 94 96 96
22 22 25 23 20 18 14
23 20 22 19 22 23 26
40 40 39 37 37 34 32 34
39 43 46 49 53 56 53
65 58 58 55 54 54
90 92 89 87 86
17 15 16 19 22 25 23
41 41 36 33 32 30 26
6 9 8 8 7 4 6
46 46 47 49 51 53 59 64
71 67 64 61 59 56 58 55
58 60 60 62 62
61 57 54 50 47 47
8 13 20 21 24
47 47 50 53 54 57 55
35 35 32 31 28 27 25 22
90 92 90 88 87 83
52 55 52 47 47
45 49 51 54 58
40 35 34 34 28
51 50 49 48 47 44 44
91 84 81 81 79 78 75 78
55 51 50 50 49 46 40
67 74 77 79 82 85 92
26 26 28 29 33
68 72 74 77 81 84 86
81 77 76 74 67 62
24 17 15 13 10 6 2
36 39 38 35 32 30 28 21
25 28 29 27 29 32
80 74 73 72 74 68
13 14 14 15 18 20 21 27
55 52 49 47 45 41 43
74 76 75 72 71 70 63 56
18 17 13 12 11 7
33 33 35 34 31 26
45 49 47 49 52 52
49 54 55 55 57 60 57
79 79 83 85 90
50 50 50 51 54 57
43 47 48 48 50 52 53 52
86 84 83 85 83 80 80
41 40 41 44 44 43
36 30 26 25 22 21 19 22
9 12 15 18 24 24
20 27 32 34 36 34
51 51 53 59 61 61
57 55 58 59 59 61 66
6 10 10 13 14 15 18
39 43 46 49 51 51
92 89 87 84 83 80 79 80
45 43 40 35 33 27
21 24 25 28 32
31 28 29 32 36 37 40 42
77 77 79 80 79 80
88 90 88 87 84 79 75
16 18 16 16 12
74 72 70 68 66 63
72 74 77 79 80
23 26 27 29 31 32 34
65 67 70 72 74 75
74 76 77 79 82 85
73 71 70 69 67 65 63
65 64 63 60 57
29 32 35 36 38 41 44 47
6 8 11 13 15 17 18
25 24 22 20 19 16 13
23 24 25 27 28 30
42 44 45 47 48 49
78 80 83 86 89 90
65 68 69 72 74 75 78 81
28 29 32 33 34 35 36 39
63 64 66 69 71 73 74
15 14 13 11 9 6
62 65 67 68 71 73 74 76
92 91 90 89 86 84 83
70 72 75 77 78 79
77 74 73 70 67 66 65
44 42 40 38 36
89 87 86 83 82 80 77
58 61 62 65 67 69
70 68 66 63 60
42 43 46 49 50 51 52 55
23 22 19 18 15 14
42 39 38 37 36 34
54 51 50 49 46
21 18 16 15 14 12 11
31 28 25 23 20 19 18
15 13 10 8 7 6 4 1
36 38 39 40 42 45 46 48
46 44 41 39 37 36
30 28 27 24 21 19
23 20 17 16 15 12
71 74 76 78 80 81 84 85
82 84 87 88 90 93 95 96
52 54 55 58 60 62 64
23 26 28 29 31
87 84 83 80 79 76 75 73
26 29 31 32 34 36
73 72 69 67 66 65 62
97 94 92 90 87 85 82
25 24 23 20 18 16 13
68 66 65 63 61
32 30 27 25 23 21 18 15
35 37 38 39 42
81 84 87 88 91 94 95
43 41 40 39 38
53 51 48 45 43
79 77 74 72 71 68 65
17 19 21 22 24
55 58 60 62 65
69 67 66 63 61
26 29 30 31 34 37
3 5 6 8 9 12
65 68 71 72 75 78 80 83
94 92 90 89 87
35 34 31 30 27
67 65 62 61 58 55 54
13 14 16 18 20 23 24
66 65 62 61 58
83 84 85 87 90 91 94 97
71 70 69 68 66 65 62
18 16 13 11 10 9 8 7
95 92 91 90 87 84
46 45 43 40 39 38
42 44 45 48 49 52
58 61 64 65 66 68 71
80 79 77 76 74
59 60 62 63 66 67 69 71
29 32 33 34 35 38 41 43
74 71 70 68 67
79 77 74 71 70
46 44 42 40 38 36
61 63 66 69 71
63 61 58 57 55 53
11 12 14 15 17 19
87 89 90 92 94 97
18 21 24 27 29
92 90 88 87 85 82
16 15 14 12 10 9 7 5
69 68 67 65 63 61 58 56
61 59 56 54 51 48
53 56 58 60 61 64 67
83 82 79 77 74 71 70
29 31 34 36 39 42
78 80 83 84 86 89 90 93
65 63 62 61 60 58
27 24 22 19 17 15
38 41 44 47 50
72 70 67 65 63 60 59
57 60 63 64 66
48 49 51 53 55 57
95 92 90 89 88
85 88 91 92 94
16 15 12 10 8 5 4 2
82 81 80 77 75 73 70
31 34 35 38 39 41 44
75 78 79 81 83 86
84 83 81 78 77 74
24 21 18 16 15 12
34 32 31 29 26 23
94 92 91 89 87 84 82
17 19 21 23 25 26
52 50 49 48 47 46 44 41
44 43 41 40 39 36 34
68 70 73 76 79 82
52 50 48 45 43 42 40 38
40 41 44 45 47 48 51 52
66 68 69 72 75 77 79
38 35 34 31 30 29 26
31 28 27 24 21
18 19 22 23 26 29 32 33
85 82 81 79 78 77
54 52 49 47 46 43 40 37
60 63 65 68 70 72 74 77
47 49 52 55 58 61
26 28 30 33 34 36 37 40
36 37 40 42 45 48 50 51
25 24 22 20 17 14 11
82 81 80 78 77
69 68 66 63 60 57 54 52
67 69 70 73 75
99 98 95 94 93 90 88
82 85 87 88 91 94
84 86 89 91 92 93 94
34 31 29 27 26 23
76 78 79 80 81 82 83 85
42 43 46 47 49 52 55
62 63 66 68 70
82 79 76 74 71
4 7 8 9 11 12 13
6 8 9 10 11
82 80 77 74 71 69 67
59 61 64 67 69
21 19 16 14 13 10
14 17 18 21 23 25 26
27 24 22 21 20 19
77 75 74 73 72 69
7 8 9 10 12 14 15 17
76 78 79 82 83 84 86 89
66 68 69 71 72 74
69 68 66 64 61
64 62 60 57 56
59 61 62 65 68
19 17 16 14 12
52 53 54 55 58 61 63
3 6 9 12 14
80 83 84 86 89
97 95 93 91 90 88 87
52 53 55 58 60 61 62 65
35 32 30 27 24 22
52 55 58 59 62 64
83 81 78 77 75 73 71 68
91 89 87 84 83 80 78
7 8 11 12 15
60 62 65 67 69 70 71 74
50 52 53 54 56 57
22 19 17 16 13 10
46 43 40 39 37
57 60 63 66 68 70 73 76
73 74 75 77 80 81
69 70 72 75 78
27 26 24 21 19 16
68 70 72 74 75 77
73 74 75 76 77 80 82 84
65 68 69 72 73 75
50 47 44 41 38 37
93 90 87 85 83 82 79
13 16 17 19 22 24 27
97 95 94 92 91 88
40 37 35 33 32
68 70 71 72 73 74 75
14 17 18 20 23
43 41 38 37 34 33 31 30
17 20 23 26 29 31 33 34
13 15 16 17 19 21 22
94 92 91 88 86
82 81 79 78 77 76 74 73
39 41 44 46 48 50
82 79 78 76 73 71
98 97 95 92 91 89 87 85
81 78 76 74 71
67 70 72 73 76 79 80
22 23 25 28 30 31 34
49 48 46 43 41
87 86 85 84 83
84 87 88 90 91 94
29 26 24 23 20
22 20 19 18 17
48 50 53 55 57 60 63 64
51 49 48 46 43 41 39 37
21 22 24 26 28 31 34
55 56 57 59 60 62 63
38 39 42 45 46 49
73 71 70 68 67
54 51 50 47 46 43 42 41
25 24 23 21 18
70 72 75 78 81 82
53 52 50 49 47
56 55 53 52 49 48
80 79 78 75 74 71 68 67
70 71 74 76 78 81 83
34 33 30 28 26 24 21
62 64 65 66 67 68
51 53 55 58 61 64 65
37 35 32 31 30 28 26 25
47 49 51 53 54 55
31 28 25 22 21 19
21 22 25 26 29 30 31
53 50 48 45 43 40 38 37
83 80 79 78 75
20 21 23 26 29 30
30 33 34 37 39
18 20 23 24 25
24 26 28 31 33 36 37
81 78 76 75 73 71 68 65
70 73 75 77 78 81 82 85
23 24 26 29 31 34 36 39
26 28 29 32 34 37 38 40
5 6 7 9 12
27 25 22 19 16 13 11
20 23 24 25 26 29 31 33
29 28 26 24 22 20 18 15
72 73 76 77 79 80 81 83
17 18 20 22 25
85 83 82 80 78 75 72
7 8 9 11 13
70 71 72 73 75 77
58 61 62 63 64 66 68
23 20 19 16 13 10 8
8 11 14 17 19 22
89 88 85 84 81 79 78
60 63 64 65 68 71 72 75
47 49 50 51 52 53 55 56
32 29 27 24 21 19 17 14
78 81 84 85 86 88 90 93
69 67 65 64 63 62
23 24 25 28 30 33 35
35 36 39 41 43 46
81 80 78 77 75
37 39 41 43 44 46
70 73 76 79 81
99 96 94 92 89 86 85 82
31 30 28 26 25 24 21
73 75 77 80 81 84 85 86
27 28 31 33 35 38 40 42
49 51 53 54 57
28 27 24 23 20 19 18
54 55 58 60 62
34 33 32 31 29
17 20 22 23 24 25 28 31
57 58 60 61 64 65 68
89 88 86 84 81 79 77
20 23 26 29 30 33 36 39
82 85 86 87 90 91 94
66 64 62 59 57 55 53
46 43 40 39 36 35 33 31
43 41 40 38 35 32
55 53 52 51 48
10 12 14 15 17 19
29 26 25 22 20 18 16
34 33 31 29 28 26 25 22
83 86 89 90 92
81 80 79 77 74 73 70
90 87 85 84 83
34 35 38 41 42
46 45 42 41 38 36
77 76 73 72 71
66 63 60 58 56 55
43 44 47 48 49 51 53 56
20 22 25 26 29 30 31
83 86 88 91 92 95 96
85 82 79 76 73 72 69
59 57 54 53 50 49 48 45
90 89 86 83 82 79
21 23 24 26 29 32 34
87 84 83 81 79 76 73 71
48 47 45 43 41 40 37 36
7 8 9 11 14 15 18 19
55 52 49 48 47 45 44
75 76 78 80 83
62 64 65 68 70 73 76 79
51 53 54 57 59 62 65 68
60 61 62 64 67 70 71 72
87 88 89 90 93 94
67 70 73 74 77
37 40 42 44 45 47 48
27 24 22 19 16 14
24 23 22 20 17 15 13 10
19 21 24 27 29 30
31 29 27 25 23
73 72 69 67 65 63 61
88 87 84 81 80 79
67 69 72 74 75 78 81
80 79 76 74 72 71
22 20 18 15 13 12
42 40 37 35 32 30 29 27
2 3 5 8 10
2 3 6 7 10 12
83 84 85 86 88 91 92 93
18 21 24 26 29 31 34 35
77 79 82 84 85 86 88 89
59 61 63 65 67 69
12 15 16 19 20 22
37 35 33 32 30 27
90 87 86 85 84
48 49 51 52 53
63 60 57 54 52 51 49 46
57 56 54 53 51 50 48 45
16 14 11 10 9 8 7 5
54 56 59 61 63 66 69 70
34 35 38 41 42 44 46 49
39 40 41 42 44 47
16 13 10 7 6 3
89 91 92 93 94 96
60 63 64 65 68 70
31 29 27 26 23 20 19 16
34 37 40 41 44
89 86 85 83 81 78 75
79 78 76 74 72
4 7 9 12 15 17 18
70 67 65 63 62 60 58 56
42 44 46 47 48 51 53 54
17 15 14 13 12
32 35 36 38 39 41 44 46
9 8 5 4 2 1
77 80 82 84 86 88 91
73 72 70 67 64 63
31 29 28 25 23
46 47 50 51 52
26 25 22 19 18
36 33 32 29 26 23 22
17 14 11 10 9 6 4
63 61 58 55 52 49 46
44 42 41 40 37 35 33
61 60 59 56 54
55 58 59 60 61 63
93 91 90 87 86 84
78 76 75 73 72 71
64 63 62 59 58
84 85 88 90 93
44 42 39 38 37 35
41 40 37 34 32
10 9 6 3 2
50 47 44 42 39
82 84 87 88 89 90
74 75 77 78 81 84 86
50 53 56 57 59 62
58 56 55 53 52
19 16 13 12 10 8 7
35 32 30 28 26 25 24
29 26 24 23 21 18 15 14
23 21 19 16 15 14 11 10
86 89 92 94 95
66 64 62 59 56
23 22 20 19 18
45 42 40 37 34 33 32 31
20 18 16 15 14 13
31 28 27 26 23 22
10 13 16 17 19 22 24
37 38 39 40 41
79 81 82 84 87 90
33 31 30 27 25 24 22
4 6 7 8 10 12 14 16
11 13 16 18 21 22 23
80 81 83 85 87 90
64 61 60 59 57 54
88 86 83 82 81 79 77
62 63 65 67 69
99 97 94 93 91 90 89 88
66 68 70 71 72
97 94 92 91 88
83 84 85 87 90
22 24 26 29 32 33 34
42 44 45 48 49 50
93 92 91 89 87 86
77 79 81 82 83 85 88
39 38 37 35 33
36 33 31 30 27
66 64 63 60 57 54 51 48
35 37 39 42 43
66 64 61 59 56 55
23 24 25 28 30 33 36 38
2 5 6 7 8 9 12 13
81 78 77 74 73 72 69
40 42 43 44 46 49
45 46 48 51 54 57 60 63
97 94 93 91 89 86 85 82
61 60 59 58 55 54 53
50 51 53 55 58 60 63 64
45 46 47 50 52
28 26 24 23 22 19 17
38 40 42 43 44 46 47
34 32 29 28 26 25
17 14 11 8 7
98 97 95 94 93 92
73 74 75 76 78
76 78 79 80 83
70 68 67 64 62 60 59 56
95 94 93 90 89 88 86
42 39 36 35 32 29
39 36 33 32 30
64 66 69 71 72 73 75
39 37 35 32 29 27 24""";

  int safeReports;

  Report({
    required this.safeReports,
  });

  int countSafeReports() {
    List<List<int>> convert = Utils.stringToEmbeddedIntList(value);

    for (var i = 0; i < convert.length; i++) {
      List<int> report = convert[i];
      for (var y = 0; y < report.length; y++) {
        List<int> copyReport = List.from(report);
        copyReport.removeAt(y);
        if (checkAdjacentLevels(copyReport) &&
            isSortedWithoutDuplicates(copyReport)) {
          safeReports += 1;
          break;
        } else {
          copyReport = List.from(report);
          continue;
        }
      }
    }
    return safeReports;
  }

  bool checkAdjacentLevels(List<int> report) {
    for (var y = 0; y < report.length; y++) {
      if (y + 1 < report.length && (report[y] - report[y + 1]).abs() < 4) {
        if (y == report.length - 2) {
          return true;
        }
        continue;
      } else {
        return false;
      }
    }
    return false;
  }

  bool isSortedWithoutDuplicates(List<int> list) {
    if (list.isEmpty || list.length == 1) {
      return true;
    }

    bool isAscending = true;
    bool isDescending = true;

    for (int i = 1; i < list.length; i++) {
      if (list[i] == list[i - 1]) {
        return false;
      }
      if (list[i] < list[i - 1]) {
        isAscending = false;
      }
      if (list[i] > list[i - 1]) {
        isDescending = false;
      }
    }

    return isAscending || isDescending;
  }
}
