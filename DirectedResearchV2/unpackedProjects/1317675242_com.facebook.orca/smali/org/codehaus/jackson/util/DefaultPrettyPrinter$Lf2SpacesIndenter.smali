.class public Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lorg/codehaus/jackson/impl/Indenter;


# static fields
.field static final a:Ljava/lang/String;

.field static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    :try_start_0
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 241
    :goto_0
    if-nez v0, :cond_0

    const-string v0, "\n"

    :cond_0
    sput-object v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->a:Ljava/lang/String;

    .line 245
    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->b:[C

    .line 247
    sget-object v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->b:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 248
    return-void

    .line 240
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 4

    .prologue
    const/16 v3, 0x40

    const/4 v2, 0x0

    .line 257
    sget-object v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->c(Ljava/lang/String;)V

    .line 258
    add-int v0, p2, p2

    .line 259
    :goto_0
    if-le v0, v3, :cond_0

    .line 260
    sget-object v1, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->b:[C

    invoke-virtual {p1, v1, v2, v3}, Lorg/codehaus/jackson/JsonGenerator;->b([CII)V

    .line 261
    sget-object v1, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->b:[C

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 263
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->b:[C

    invoke-virtual {p1, v1, v2, v0}, Lorg/codehaus/jackson/JsonGenerator;->b([CII)V

    .line 264
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method
