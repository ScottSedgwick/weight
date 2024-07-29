module Data.Scott exposing (data)

import Time exposing (Month(..))
import Model exposing (DataPoint, mkWeight, mkBp)

data : List DataPoint
data = 
  [ mkWeight 2022 Jan  8 102.8
  , mkWeight 2022 Jan 15 101.1
  , mkWeight 2022 Jan 22 100.4
  , mkWeight 2022 Feb  1 100.3
  , mkWeight 2022 Feb  5  97.6
  , mkWeight 2022 Feb 12  99.5
  , mkWeight 2022 Feb 19  97.4
  , mkWeight 2022 Feb 26  96.8
  , mkWeight 2022 Mar  7  98.4
  , mkWeight 2022 Mar 12  96.9
  , mkWeight 2022 Mar 19  96.9
  , mkWeight 2022 Mar 29  96.7
  , mkWeight 2022 Apr  2  95.7
  , mkWeight 2022 Apr  9  96.1
  , mkWeight 2022 Apr 23  97.1
  , mkWeight 2022 May  1  96.9
  , mkWeight 2022 May 14  96.6
  , mkWeight 2022 May 21  96.2
  , mkWeight 2022 May 28  94.6
  , mkWeight 2022 Jun 12  94.1
  , mkWeight 2022 Jun 18  96.0
  , mkBp 2022 Jun 18 126 74
  , mkWeight 2022 Jun 18  96.0
  , mkBp 2022 Jun 18 124 79
  , mkWeight 2022 Jun 27  93.4
  , mkBp 2022 Jun 27 124 79
  , mkWeight 2022 Jul  2  94.4
  , mkBp 2022 Jul  2 126 83
  , mkWeight 2022 Jul 17  93.6
  , mkBp 2022 Jul 17 122 75
  , mkWeight 2022 Jul 23  94.1
  , mkBp 2022 Jul 23 123 75
  , mkWeight 2022 Aug  6  92.8
  , mkBp 2022 Aug  6 127 76
  , mkWeight 2022 Aug 13  92.4
  , mkBp 2022 Aug 13 127 77
  , mkWeight 2022 Aug 20  93.0
  , mkBp 2022 Aug 20 113 75
  , mkWeight 2022 Aug 27  91.5
  , mkBp 2022 Aug 27 119 78
  , mkWeight 2022 Sep  3  91.0
  , mkBp 2022 Sep  3 111 67
  , mkWeight 2022 Sep 11  91.1
  , mkBp 2022 Sep 11 119 68
  , mkWeight 2022 Oct 10  91.7
  , mkBp 2022 Oct 10 130 73
  , mkWeight 2022 Oct 15  91.0
  , mkBp 2022 Oct 15 115 69
  , mkWeight 2022 Oct 20  91.4
  , mkBp 2022 Oct 20 121 66
  , mkBp 2022 Nov  2 118 70
  , mkWeight 2022 Nov 19  93.7
  , mkBp 2022 Nov 19 120 71
  , mkWeight 2022 Dec  3  94.1
  , mkBp 2022 Dec  3 121 72
  , mkWeight 2023 Jan  1  96.3
  , mkBp 2023 Jan  1 133 79
  , mkWeight 2023 Jan 22  94.8
  , mkBp 2023 Jan 22 130 76
  , mkWeight 2023 Feb  4  95.1
  , mkWeight 2023 Apr  2  97.4
  , mkBp 2023 Apr  2 122 73
  , mkWeight 2024 Jan 20  99.2
  , mkBp 2024 Jan 20 124 79
  , mkWeight 2024 Jun 21 102.2
  , mkBp 2024 Jun 21 136 82
  , mkWeight 2024 Jul  2 101.7
  , mkWeight 2024 Jul  3  98.9
  , mkBp 2024 Jul  3 113 71
  , mkWeight 2024 Jul  7  98.2
  , mkBp 2024 Jul  7 110 69
  , mkWeight 2024 Jul 14  96.1
  , mkBp 2024 Jul 14 116 74
  , mkWeight 2024 Jul 21  97.1
  , mkBp 2024 Jul 21 124 75
  , mkWeight 2024 Jul 28  94.6
  , mkBp 2024 Jul 28 126 75
  ]