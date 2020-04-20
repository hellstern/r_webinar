# *************************** 
# Webinar
# Opgave - CykelSalg
# Tue Hellstern
# *************************** 

# Indlæs pakken - readxl
install.packages("readxl")
library(readxl)


# Indlæs data - Biler.xlsx
CykelSalg <- read_excel("Cykelsalg.xlsx")
summary(CykelSalg)


# Plot
plot(x = CykelSalg$Antal, y =CykelSalg$Aar)


?barplot
barplot(CykelSalg$Avg_Pris,
        axisnames = TRUE,
        legend.text = "Cykelsalg") 


barplot(height, width = 1, space = NULL,
        names.arg = NULL, legend.text = NULL, beside = FALSE,
        horiz = FALSE, density = NULL, angle = 45,
        col = NULL, border = par("fg"),
        main = NULL, sub = NULL, xlab = NULL, ylab = NULL,
        xlim = NULL, ylim = NULL, xpd = TRUE, log = "",
        axes = TRUE, axisnames = TRUE,
        cex.axis = par("cex.axis"), cex.names = par("cex.axis"),
        inside = TRUE, plot = TRUE, axis.lty = 0, offset = 0,
        add = FALSE, ann = !add && par("ann"), args.legend = NULL, ...)






CykelSalg$Aar <- factor(CykelSalg$Aar)

library(ggthemes)

ggplot(data = CykelSalg) +
  geom_point(mapping = aes(x=Antal, y=Aar, size=cykeltype, color=cykeltype)) +
  ggtitle("Cykel salg i DK, 2017 til 2019") +
  theme_wsj()

ggsave("CykelSalg.pdf")
ggsave("CykelSalg.jpg")