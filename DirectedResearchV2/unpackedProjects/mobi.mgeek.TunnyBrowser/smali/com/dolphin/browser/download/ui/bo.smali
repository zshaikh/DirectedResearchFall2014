.class public Lcom/dolphin/browser/download/ui/bo;
.super Ljava/lang/Object;
.source "FileWrapper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/download/ui/bo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bo;->a:Ljava/io/File;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/download/ui/bo;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 27
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 31
    goto :goto_0

    .line 34
    :cond_2
    iget-object v3, p0, Lcom/dolphin/browser/download/ui/bo;->a:Ljava/io/File;

    .line 35
    invoke-virtual {p1}, Lcom/dolphin/browser/download/ui/bo;->a()Ljava/io/File;

    move-result-object v4

    .line 37
    if-ne v3, v4, :cond_3

    move v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    move v0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_0

    .line 45
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    :cond_7
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v2

    .line 55
    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 56
    if-nez v0, :cond_8

    .line 57
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 59
    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bo;->a:Ljava/io/File;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/dolphin/browser/download/ui/bo;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/download/ui/bo;->a(Lcom/dolphin/browser/download/ui/bo;)I

    move-result v0

    return v0
.end method
