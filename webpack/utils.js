const path = require('path')

const assetsPath = (dir, subDir = 'assets') => path.join(subDir, dir)

const resolve = (dir) => path.join(__dirname, '..', dir)

module.exports = {
  assetsPath,
  resolve
}
