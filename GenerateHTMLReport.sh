# Capture coverage data
lcov --capture --directory buildtest --output-file buildtest/coverage.info

# Remove coverage for external files (optional)
lcov --remove buildtest/coverage.info '/usr/*' --output-file buildtest/coverage.info

# Generate the HTML report
mkdir -p coverage_report
genhtml buildtest/coverage.info --output-directory buildtest/coverage_report