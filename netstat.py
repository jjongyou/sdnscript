import subprocess
try:
  out = subprocess.run("netstat -an | grep 192.168", timeout=2, capture_output=True, text=True, shell=True)
  # out = subprocess.run("tcpdump dst portrange 5200-5209 & sleep 1; kill $!", capture_output=True, text=True, shell=True)
  # out = subprocess.run("tcpdump dst portrange 5200-5209 & sleep 1; kill $!", capture_output=True,shell=True)
  # proc = subprocess.run("tcpdump dst portrange 5200-5209", timeout=1,shell=True)

  # print(out.stdout)
  # print(type(out.stdout))
  ptdata = out.stdout
except subprocess.TimeoutExpired as e:
  # print(e.output.decode(encoding="utf-8", errors="ignore"))
  ptdata = str(e.output)
  # print(ptdata)
  # print(type(ptdata))
  # ptdata = out.stdout
  print("TimeoutExpired")

ptdatas = ptdata.split("\\n")
print("==== SHELL ====")
# print(ptdatas)
# for i in ptdatas:
#  print(i)


datas = str(ptdatas).split()

ips = []
print("==== IPS ====")
for d in datas:
  if (d.find("192") == 0):
    ips.append(d)

for ip in ips:
  print(ip)

ips = str(ips).split()
ports = str(ips).split(":")
print("==== PORTS ====")
for p in ports:
  print(p)
print("=== END ===")
