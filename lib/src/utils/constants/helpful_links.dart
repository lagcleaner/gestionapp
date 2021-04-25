const helpfulLinks = [
  HelpfulLink(
    name: 'Sitio Web de la Universidad de La Habana',
    url: 'http://www.uh.cu',
  ),
  HelpfulLink(
    name: 'Correo para estudiantes de la Universidad de La Habana',
    url: 'https://correo.estudiantes.uh.cu',
  ),
  HelpfulLink(
    name: 'Correo de la Universidad de La Habana',
    url: 'https://correo.uh.cu',
  ),
  HelpfulLink(
    name: 'Plataforma digital de enseñanza',
    url: 'https://evea.uh.cu',
  ),
];

class HelpfulLink {
  final String name;
  final String url;

  const HelpfulLink({required this.name, required this.url});
}