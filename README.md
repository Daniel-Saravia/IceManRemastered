# IceMan Remastered CODESYS PROJECT

An industrial ice bagging machine control system built with PLC automation components.

## Overview

This project contains the control logic and configuration for an automated ice bagging system. The system handles ice production, bag feeding, sealing, and dispensing operations.

## System Components

### Core Components
- **Agitator** - Ice agitation and mixing
- **Bag Feeder** - Automated bag handling and positioning
- **Door** - Access control and safety interlocks
- **Heat Seal** - Bag sealing operations
- **Heater** - Temperature control systems
- **Hopper** - Ice storage and distribution
- **Ice Maker** - Ice production control
- **Kicker** - Bag ejection mechanism

### Control Systems
- **Machine Control** - Main system orchestration
- **Motion Control** - Motor and actuator coordination
- **Manual Control** - Operator interface and overrides
- **Fault Management** - Error handling and recovery
- **Temperature Control** - Thermal regulation

### I/O Systems
- Input/Output mapping and configuration
- Sensor interfaces (proximity, reflective)
- Motor control interfaces
- Safety and interlock systems

## Configuration

The system uses XML-based configuration files for:
- Component settings and parameters
- Sequence definitions
- I/O mappings
- Motor profiles
- Safety interlocks

## Development

This appears to be developed for industrial PLC systems, likely using:
- Structured Text (ST) programming language
- XML configuration management
- Component-based architecture

## Coding Standards

### File Structure
- **Structured Text Files (.st)**: All logic should be converted to .st files for version control and cross-tool compatibility
- **Naming Convention**: Use PascalCase for programs/function blocks, snake_case for internal variables
- **File Location**: Place .st conversions alongside their XML counterparts with same base name

### Code Organization
1. **Program Structure**:
   ```iec-st
   PROGRAM ProgramName
   VAR_INPUT
       // Input parameters
   END_VAR
   VAR
       // Internal variables
   END_VAR
   // Network comments describe logic blocks
   // Network 1: Description
   IF condition THEN
       // Logic here
   END_IF;
   END_PROGRAM
   ```

2. **Global Variable Lists (GVL)**:
   - Group related variables in GVL files
   - Use dot notation for hierarchical organization (e.g., `Settings.Agitator.Enable`)
   - Maintain consistent naming across modules

3. **Comments**:
   - Use `// Network N:` to denote logical sections
   - Document state machines and sequences clearly
   - Explain non-obvious timer values and constants

4. **Data Types**:
   - Define custom types in separate .st files
   - Use TIME literals (T#10S, T#2M) for durations
   - Use BOOL, INT, REAL for standard types

5. **Settings Organization**:
   - Centralize configuration in Settings GVL
   - Group by component (Agitator, Bagger, Door, etc.)
   - Include defaults in Admin program

### Conversion Guidelines
- XML sequences → State machine implementations in ST
- Ladder logic → IF/THEN/ELSE statements
- Function blocks → PROGRAM or FUNCTION_BLOCK in ST
- Maintain I/O mappings in dedicated GVL files

## Safety


⚠️ **Industrial Equipment Warning**: This system controls industrial machinery. Proper safety procedures and qualified personnel are required for installation and operation.
