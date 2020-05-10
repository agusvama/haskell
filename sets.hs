module Sets where

import qualified Data.Set as Set

-- sets are always in order

setNub xs = Set.toList $ Set.fromList xs
-- the result list will be in order, whereas with nub the order of the original list wil be kept
