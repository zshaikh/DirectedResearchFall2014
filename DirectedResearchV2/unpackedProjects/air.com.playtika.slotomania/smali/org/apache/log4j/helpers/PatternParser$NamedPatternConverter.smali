.class abstract Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NamedPatternConverter"
.end annotation


# instance fields
.field precision:I


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V
    .locals 0
    .param p1, "formattingInfo"    # Lorg/apache/log4j/helpers/FormattingInfo;
    .param p2, "precision"    # I

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 503
    iput p2, p0, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->precision:I

    .line 504
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const/4 v6, 0x1

    .line 511
    invoke-virtual {p0, p1}, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->getFullyQualifiedName(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "n":Ljava/lang/String;
    iget v4, p0, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->precision:I

    if-gtz v4, :cond_0

    move-object v4, v3

    .line 526
    :goto_0
    return-object v4

    .line 515
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 520
    .local v2, "len":I
    sub-int v0, v2, v6

    .line 521
    .local v0, "end":I
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->precision:I

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_2

    .line 522
    const/16 v4, 0x2e

    sub-int v5, v0, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 523
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    move-object v4, v3

    .line 524
    goto :goto_0

    .line 521
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 526
    :cond_2
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method abstract getFullyQualifiedName(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
.end method
