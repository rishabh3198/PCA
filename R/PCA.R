#' PCAplot for plotting Principal Components using ggplot2
#'
#' @param gene           specific genedata with first column is row_names and second column is symbol
#' @param meta           a metadata explaining the hour of the day at which sample was taken
#'
#' @return               a grid plot of two columns of which one is PCA plot of PC1 and PC2 and other is the hour of day when sample taken
#' @export


PCA<- function(gene,meta){
  sample<- colnames(gene)[3:ncol(gene)]
  for (i in sample) {
    gene[[i]]<- as.numeric(gene[[i]])
  }
  gene[is.na(gene)]= 0
  gene[1]= NULL
  df=gene[-1]
  pca<-autoplot(prcomp(df,scale. = T,center = T),loadings = TRUE, loadings.colour = 'blue',
                loadings.label = TRUE, loadings.label.size = 4)+theme_bw()
  df2<-meta
  metainfo<-ggplot(data = meta,aes(x = Time, y = sIdx)) + geom_point()+
    theme_bw()
  plot<- plot_grid(pca, metainfo, labels = c('PCA', 'Meta'),ncol = 2,align = 'h')
  return(plot)
}
