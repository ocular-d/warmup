<div align="center">

# Web Cache Warm Up

</div>

## Table of Contents

- [About the Project](#📄-about)
- [Getting Started](#🚀-getting-started)
- [Contributing](#🤝-contributing)
- [License](#📝-license)

## 📄 About

Warm up your web cache.

## 🚀 Getting Started

### Requirements

This script depends on a `sitemap.xml` in the web root, for example *https://example.io/sitemap.xml*.

### Usage

Run the container with

```shell
docker run -it testthedocs/warmup:0.0.1 example.io
```

The script will call all URLs listed in your `sitemap.xml` and will output the time and URls.

```shell
real	0m0.900s
user	0m0.020s
sys	0m0.007s
example.io.com/

real	0m0.868s
user	0m0.024s
sys	0m0.006s
example.io/glossary.html

Done - Cache is warmed up
```

## 🤝 Contributing

We are a community effort, and everybody is most welcome to participate!

Be it filing bugs, formulating enhancements, creating pull requests, or any other means of contribution, we encourage contributions from everyone.

## 📝 License

Distributed under the [MIT](https://choosealicense.com/licenses/mit/ "Link to license") license.

