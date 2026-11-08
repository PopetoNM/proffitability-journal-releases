# Install Journal and ChartVeil

Each download includes both desktop apps and the local Coach model.

## Mac with Apple Silicon

1. [Download the Mac disk image](https://github.com/PopetoNM/proffitability-journal-releases/releases/download/v0.4.0-beta.4/Proffitability-Journal-Mac-arm64.dmg).
2. Open it from Downloads and drag the **PROFFITABILITY JOURNAL** folder onto **Applications**.
3. Open that folder in Applications and launch either app.

This tester beta uses an ad hoc signature. If macOS blocks the first launch, verify you have the file from this release and follow [Apple’s first-launch instructions](https://support.apple.com/en-us/102445).

![The guide dialog in Journal](docs/screenshots/mac-app-guide.png)

## Windows 11 or later on x64

1. [Download Windows Setup](https://github.com/PopetoNM/proffitability-journal-releases/releases/download/v0.4.0-beta.4/Proffitability-Journal-Windows-x64-Setup.exe).
2. Run the downloaded Setup app and follow the prompts.
3. Launch **PROFFITABILITY JOURNAL** or **ChartVeil** from Start.

The Windows installer is unsigned. If Windows shows a publisher warning, verify the download and compare its SHA-256 with the [release checksum](https://github.com/PopetoNM/proffitability-journal-releases/releases/tag/v0.4.0-beta.4).

## First trade and Coach

Open the **?** button in Journal for shortcuts. To log a trade, choose Live taken or Backtesting, then **New trade**. Enter signed net P&L and choose Micro or Mini. Setup, notes, checklist, and screenshots are optional. If you attach a full TradingView chart, review the detected entry, stop, and target before saving. You can save with any unreadable fields left blank.

Open **Coach** and send a message with the bundled model selected. The first reply can take longer while the model loads. Follow up in the same conversation, or choose **Read aloud** beneath a reply to use your device’s voice. The screen below shows fictional data.

![Coach answering a follow-up in Windows](docs/screenshots/windows-coach.png)

Open **Settings → Appearance** to choose Obsidian, Graphite, or High contrast. Select the preset and choose **Apply selected look**. Edit your defaults in **Settings → Trade logging**.

## ChartVeil

Open ChartVeil and choose **Apply** on a background, or add your own photo, GIF, or video. Adjust fit, position, and opacity in the preview. **Backgrounds Off** restores the chart's original appearance.

- **Chrome on Mac or Windows.** In ChartVeil, go to **Settings → Open extension folder**. On Chrome's Extensions page, enable **Developer mode**, choose **Load unpacked**, and select that folder. Open a TradingView chart. This is a one-time setup for each browser profile.
- **TradingView Desktop.** Enable **Automatic TradingView backgrounds** in ChartVeil. Mac presents a connection prompt. On Windows, true Desktop replacement uses an optional local connection. The Chrome setup above is the guided chart-background path on Windows.

![ChartVeil’s curated library and sample chart preview](docs/screenshots/chartveil.png)
