$content = Get-Content 'index.html' -Raw

# Use a simple pattern that doesn't have special characters in the replacement
$pattern = '(?s)(<p id="info-para"[^>]*>)\s*<br />\s+I am a frontend developer.*?only theoretical projects\.\s*<br />'

$replacement = @'
$1
          I am a frontend developer and AI enthusiast currently pursuing my Master's degree in Artificial Intelligence at VIT Vellore, after completing my undergraduate studies at the same institution. Over the past year, I have actively worked on multiple real-world projects, including SaaS-based web applications built for clients and independent users.
          <br /><br />
          I have designed and developed several SaaS applications from scratch, handling everything from frontend architecture and user experience to AI-powered features and deployment. Some of these applications have been used by real users, helping me understand practical challenges such as scalability, usability, bug handling, and product quality.
          <br /><br />
          My core expertise lies in JavaScript, React.js, and modern frontend development, along with WordPress for customized client solutions. In parallel, I have a strong interest in Large Language Models (LLMs) and AI systems, and I have worked on multiple AI-driven projects involving document processing, context-aware generation, and intelligent automation.
          <br /><br />
          I focus on building clean, reliable, and user-friendly applications, and I continuously improve my skills by working on real problems rather than only theoretical projects.
'@

$newContent = $content -replace $pattern, $replacement

if ($newContent.Length -ne $content.Length) {
    Set-Content -Path 'index.html' -Value $newContent -NoNewline
    Write-Host "Success: Paragraph aligned and fixed"
} else {
    Write-Host "No changes made - pattern not found"
}
