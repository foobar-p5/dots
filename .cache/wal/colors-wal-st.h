const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#171a1d", /* black   */
  [1] = "#788696", /* red     */
  [2] = "#788696", /* green   */
  [3] = "#788696", /* yellow  */
  [4] = "#788696", /* blue    */
  [5] = "#788696", /* magenta */
  [6] = "#788696", /* cyan    */
  [7] = "#c5c5c6", /* white   */

  /* 8 bright colors */
  [8]  = "#515355",  /* black   */
  [9]  = "#788696",  /* red     */
  [10] = "#788696", /* green   */
  [11] = "#788696", /* yellow  */
  [12] = "#788696", /* blue    */
  [13] = "#788696", /* magenta */
  [14] = "#788696", /* cyan    */
  [15] = "#c5c5c6", /* white   */

  /* special colors */
  [256] = "#171a1d", /* background */
  [257] = "#c5c5c6", /* foreground */
  [258] = "#c5c5c6",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
