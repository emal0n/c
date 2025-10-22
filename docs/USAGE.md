# Usage Guide

## Quick Start

1. **Launch the Program**
   ```bash
   ./bombpatch
   ```

2. **Press 'F' to Continue**
   - The program will display the ASCII art logo
   - Press 'F' to enter the main menu

3. **Select an Option**
   - Choose from the numbered menu options
   - Use number keys to navigate

## Main Menu Options

### 1. New Match
Start a new 16-team tournament:

1. **Enter Team Names**: Input 16 team names (one per line)
2. **Group Stage**: The program will organize teams into 4 groups
3. **Enter Match Results**: For each match, enter goals for both teams
4. **Handle Ties**: If matches are tied, enter extra time results
5. **View Group Results**: See standings, goals, and victories
6. **Knockout Stage**: Proceed through quarterfinals, semifinals, and final

### 2. Rules
View football rules and regulations:
- Basic football rules
- Tournament format explanation
- Press 'R' to return to main menu

### 3. Font and Credits
View credits and sources:
- ASCII art credits
- Rules and information sources
- Press 'R' to return to main menu

### 4. About Football
Learn about football history:
- Origins of modern football
- Historical context
- Press 'R' to return to main menu

### 5. Exit
Close the program safely

## Tournament Flow

### Group Stage
- **4 Groups**: 4 teams per group
- **Round Robin**: Each team plays every other team in their group
- **Scoring**: Enter goals for each match
- **Tie Resolution**: Extra time for tied matches
- **Standings**: Based on victories, then goal difference

### Knockout Stage
1. **Quarterfinals**: Top 2 teams from each group (8 teams)
2. **Semifinals**: 4 remaining teams
3. **Final**: 2 finalists compete for championship

### Match Input Format
```
How many goals he sade - Team A: 2
How many goals he sade - Team B: 1
```

## Statistics Tracking

The program tracks:
- **Goals Scored**: Total goals by each team
- **Goals Conceded**: Goals allowed by each team
- **Victories**: Number of wins per team
- **Group Standings**: Ranked by victories and goal difference

## Navigation

### Menu Navigation
- Use number keys (1-5) to select options
- Press 'R' to return to main menu from submenus
- Press 'F' to continue from welcome screen

### Input Validation
- Team names: Text input (avoid special characters)
- Goals: Integer input only
- Ties: Automatically trigger extra time
- Invalid input: Program will prompt for re-entry

## Tips for Best Experience

### Team Names
- Use short, clear names (avoid very long names)
- Avoid special characters that might cause display issues
- Consider using team abbreviations for easier input

### Match Results
- Enter realistic goal scores
- Remember that football scores are typically low (0-5 goals)
- Use extra time for tied matches

### Tournament Strategy
- Plan your team selection before starting
- Consider team strengths when entering results
- Use the statistics to track team performance

## Troubleshooting

### Common Issues

1. **Program doesn't start**
   - Check if executable has proper permissions
   - Ensure you're in the correct directory
   - Try running with `./bombpatch` (Linux/macOS)

2. **Input not accepted**
   - Use only numbers for goals
   - Press Enter after each input
   - Check for typos in team names

3. **Display issues**
   - Ensure terminal supports UTF-8
   - Check terminal size (minimum 80x24 recommended)
   - Try resizing terminal window

4. **Tie resolution problems**
   - Extra time must have a winner
   - Re-enter goals if still tied
   - Program will loop until tie is resolved

### Getting Help

If you encounter issues:
1. Check this usage guide
2. Review the installation guide
3. Open an issue on GitHub
4. Check the main README for additional information

## Advanced Usage

### Custom Compilation
```bash
# Debug version with extra information
make debug
./bombpatch_debug

# Memory checking (requires valgrind)
make memcheck
```

### Program Options
The program runs in interactive mode by default. All configuration is done through the menu system.

## Examples

### Sample Tournament
```
Teams: Brazil, Argentina, Germany, Spain, France, Italy, England, Portugal, Netherlands, Belgium, Croatia, Uruguay, Colombia, Mexico, Japan, South Korea

Group A: Brazil, Argentina, Germany, Spain
Group B: France, Italy, England, Portugal
Group C: Netherlands, Belgium, Croatia, Uruguay
Group D: Colombia, Mexico, Japan, South Korea
```

### Sample Match
```
How many goals he sade - Brazil: 2
How many goals he sade - Argentina: 1

Brazil 2 x 1 Argentina
Argentina 1 x 2 Brazil

Winner:
Brazil
```

This creates a realistic tournament simulation with proper statistics tracking and an engaging user experience.
