use Test::Most;

use SolutionFusionChamber;

subtest "fixed tests" => sub {
    is_deeply(SolutionFusionChamber::burner(45, 11, 100), [5, 45, 0], "burner(45, 11, 100)");
    is_deeply(SolutionFusionChamber::burner(354, 1023230, 0), [0, 0, 354], "burner(354, 1023230, 0)");
    is_deeply(SolutionFusionChamber::burner(939, 3, 694), [1, 346, 0], "burner(939, 3, 694)");
    is_deeply(SolutionFusionChamber::burner(215, 41, 82100), [20, 215, 0], "burner(215, 41, 82100)");
    is_deeply(SolutionFusionChamber::burner(113, 0, 52), [0, 26, 0], "burner(113, 0, 52)");
};

done_testing();
