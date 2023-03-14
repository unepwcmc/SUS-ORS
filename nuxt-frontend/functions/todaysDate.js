export default function dateToday () {
  const date = new Date()
  const [month, day, year] = [
    date.getMonth() + 1,
    date.getDate(),
    date.getFullYear()
  ]
  return `${day}/${month}/${year}`
}
