export async function get(url: string): Promise<string> {
  const res = await fetch(url);
  if (!res.ok) {
    return "";
  }
  const bodyText = await res.text();
  return bodyText;
}
