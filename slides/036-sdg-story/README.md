# SDGs in Practice

Standalone 34-slide workshop lecture for 9 November 2026. Uses the installed `fh-ooe` class and this repository's existing presentation settings. The original `PCO.tex` deck is unchanged. No automatic title, overview or divider pages; no overlays.

## Pacing

Flexible duration, as requested; the former 30-minute cap has been removed. There are 34 slides, including six photo impressions and two worked examples. The photographs provide short narrative pauses; device and architecture pages can be explained in more detail when useful. Bullets remain audience-facing speaking prompts. No automatic title, overview or divider pages are added.

## Build

From the repository root:

```sh
latexmk -g -pdf -shell-escape -interaction=nonstopmode -halt-on-error -outdir=/tmp/codex/build/intminor/sdg-story SDG-Story.tex
cp /tmp/codex/build/intminor/sdg-story/SDG-Story.pdf SDG-Story.pdf
```

The `-g` forces regeneration when the theme's concatenated-input workflow is used elsewhere. Temporary build and render files stay under `/tmp/codex/build/intminor/sdg-story` and can be deleted once the delivered PDF has been reviewed. No additional checkout is used.

## Content and provenance

Programme and historical project statements come from `slides/035-ga-in-it-preintro/`: programme introduction and workshop contribution; the 2024 ecological challenge and buoy; the 2025 continuation and monitoring implementation; the 2026 proposals, students' gamified learning idea and microgrid learning device. Referenced images remain at their existing repository locations. The 2024 buoy image is explicitly labelled as an AI-generated concept illustration. The 2025 implementation screenshot is inherited project material, not proof of field deployment. The 2026 learning-device photograph is undated; its assignment to 2026 follows the supplied workshop collection. No claim is made that the photo proves energy autonomy, deployment, ecosystem restoration or learning outcomes.

UN sources checked 8 November 2026:

- https://sdgs.un.org/goals -- 17 SDGs
- https://sdgs.un.org/goals/goal6 -- target 6.6, water-related ecosystems
- https://sdgs.un.org/goals/goal15 -- target 15.8, invasive alien species on land and water ecosystems
- https://sdgs.un.org/goals/goal7 -- target 7.2, renewable energy
- https://sdgs.un.org/goals/goal4 -- target 4.7, learning for sustainable development

The SDG links describe intended contributions, not measured SDG impact. Target descriptions on slides are paraphrases, not quotations. The educational device is framed as a response to the students' gamified learning idea. Gamification supports energy literacy for people with little or no prior knowledge of electricity. The added functional diagrams explain purpose and flows, not fixed wiring or verified deployment. Example learning activities are possibilities for students to define and evaluate.

## Devices and data paths

Four added slides explain the buoy hardware and backend, and the energy learning-device hardware and backend. The component role descriptions use the existing slides and workspace teaching material:

- `../Current-State/03-Previous-Project/water-monitoring.md`: historical buoy device inventory and evidence boundaries.
- `../Current-State/04-Project-Candidates/candidates.md`: energy measurement examples and shared LoRaWAN/TTN/MQTT foundation.
- `../Repositories/firmware/platform.io/LoRaWAN-HelloWorld-radiolib/docs/student-lego-workflow/02-end-to-end-architecture.md`: buoy teaching path through gateway, TTN, MQTT and Raspberry Pi.
- `../ttn-dashboard/README.md`: current separate bridge/broker/store/dashboard services; MariaDB history and live SSE.

These paths are provenance references in the wider workspace, not build dependencies. The slides describe component responsibilities rather than fix software process names. The current teaching/backend stack is not retroactively claimed as the exact 2024 deployment. The owner confirmed that the suitcase uses the same telemetry route as the buoy: MCU -> LoRa radio -> LoRaWAN gateway -> TTN -> MQTT bridge/local broker on the Raspberry Pi -> storage/MariaDB and dashboard server -> SSE -> browser. No direct local Wi-Fi/MQTT alternative is presented. TTN telemetry requires internet connectivity for the gateway and backend. Energy autonomy and network connectivity are separate properties.

## Graphics and photo additions

Six existing pages were revised: official SDG icons; annotated buoy electronics; a grouped radio/backend/browser diagram; an annotated learning-device photo with a functional schematic for hidden parts; a whole-device power view with an explicit power junction and separate complete peripheral/data diagrams; and a feedback loop including history. Two worked examples are explicitly illustrative, not measured field data or fixed student requirements.

Added impression photographs, reused unchanged from the parent deck:

- 2024: `20241104_124213.jpg` -- close-up soldering and inspection.
- 2024: `20241105_102406.jpg` -- collaborative wiring and checking.
- 2026: `20261029_111217.jpg` -- three RFID readers, breadboard and controller/display wiring.
- 2026: `20261103_152419.jpg` -- display/controller wiring.
- 2026: `IMG_6293.jpg` -- solar-panel and case integration; capture date not embedded.

The annotated 2024 photo is `20241104_101827.jpg`. Numbered markers identify the MCU, pH probe, GPS receiver and LoRa antenna; the gateway is shown separately. The annotated 2026 photo is `image04.jpg`, rotated for display in LaTeX; the schematic identifies component roles, rather than pretending hidden components are visible. Its earlier occurrence was replaced with the workshop overview `20261030_111806.jpg` to avoid repeating the finished-device image.

Official SDG icons are stored unchanged under `material/sdg-icons/`; download provenance and usage source are recorded in `material/sdg-icons/SOURCE.md`. The presentation includes the requested UN credit, website link and non-endorsement statement. All diagrams and labels are editable LaTeX/TikZ; the original photographs remain unchanged. This branch does not modify the shared FH-OOE theme or the parent deck.

## Complete component coverage

The annotated photographs remain. Four new slides restore the full inventory and connection view: buoy sensor purposes; all buoy sensor/GPS inputs and radio/backend path; learning-device peripheral purposes; and its complete input/output/network connections. The buoy list explicitly includes pH, TDS, turbidity, water temperature, the board/air temperature channel and GPS. The learning-device list explicitly includes RFID readers/tags, temperature, GPS, voltage/current sensing, local display, consumers/switches, MCU(s), Pi and router. Its power overview includes all of these peripherals in the whole-device energy budget.

Buoy module examples use the workspace's `05-system-overview.md` in the student workflow (DS18B20, PH4502C, Gravity TDS), without claiming every historical board revision was identical. The local CrowPanel documentation corroborates GPS, energy sensing and display connections; the owner explicitly confirmed RFID and temperature for the learning device. Diagram arrows describe functional roles, not pin assignments, fixed bus types or proven hardware acceptance. The local display is distinct from the browser dashboard. RFID is not added to the buoy.

## Confirmed suitcase telemetry route

The owner clarified that the dashboard Raspberry Pi receives suitcase data through TTN, after the suitcase sends it over LoRaWAN. This supersedes the earlier local Wi-Fi route assumption. The hardware inventory, annotated-photo schematic, complete peripheral diagram, backend diagram and shading walkthrough all use the confirmed route. The LoRa radio is included in the device energy budget. The local display remains a direct device output distinct from the browser dashboard. The backend uses the agreed bottom-down-left MariaDB history route. No parent-branch files or shared style files are changed by this story-deck correction.

## Additional internal-wiring photograph

The owner supplied `image02.jpg` for a further 2026 impression slide, placed after the controller/display wiring photograph and before the solar/case assembly photograph. It is copied unchanged into `material/workshop-impressions-2026/internal-panel-wiring.jpg`; SHA-256 `a44ee726634d1262a2589455f719dd605479f0366dbdf2732870f34f38a303a2`. The attachment is identical to `Downloads/intminor/image02.jpg`. It is displayed uncropped in its portrait orientation. No capture timestamp is inferred.
