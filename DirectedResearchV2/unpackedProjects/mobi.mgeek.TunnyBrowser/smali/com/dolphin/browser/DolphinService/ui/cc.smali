.class public Lcom/dolphin/browser/DolphinService/ui/cc;
.super Ljava/lang/Object;
.source "MasterPasswordHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/DolphinService/ui/cc;


# instance fields
.field private b:Z

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/cc;

    invoke-direct {v0}, Lcom/dolphin/browser/DolphinService/ui/cc;-><init>()V

    sput-object v0, Lcom/dolphin/browser/DolphinService/ui/cc;->a:Lcom/dolphin/browser/DolphinService/ui/cc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/cc;->b:Z

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/DolphinService/ui/cc;->c:J

    .line 25
    return-void
.end method

.method public static a()Lcom/dolphin/browser/DolphinService/ui/cc;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dolphin/browser/DolphinService/ui/cc;->a:Lcom/dolphin/browser/DolphinService/ui/cc;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/dolphin/browser/DolphinService/ui/cc;->c:J

    .line 35
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/cc;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dolphin/browser/DolphinService/ui/cc;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/DolphinService/ui/cc;->b:Z

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "SCHEMEPLUSHOST"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "USERNAME"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "PASSWORD"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/dolphin/browser/DolphinService/ui/cc;->b:Z

    .line 30
    return-void
.end method
