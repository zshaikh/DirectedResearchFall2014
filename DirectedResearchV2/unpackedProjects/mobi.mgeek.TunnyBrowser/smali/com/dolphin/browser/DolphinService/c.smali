.class public Lcom/dolphin/browser/DolphinService/c;
.super Ljava/util/Observable;
.source "AvatarDownloader.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/Account/l;


# static fields
.field private static final a:Lcom/dolphin/browser/DolphinService/c;


# instance fields
.field private b:Lcom/dolphin/browser/DolphinService/Account/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/dolphin/browser/DolphinService/c;

    invoke-direct {v0}, Lcom/dolphin/browser/DolphinService/c;-><init>()V

    sput-object v0, Lcom/dolphin/browser/DolphinService/c;->a:Lcom/dolphin/browser/DolphinService/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/c;)Lcom/dolphin/browser/DolphinService/Account/a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/c;->b:Lcom/dolphin/browser/DolphinService/Account/a;

    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/DolphinService/c;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/dolphin/browser/DolphinService/c;->a:Lcom/dolphin/browser/DolphinService/c;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/c;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/c;->c()V

    return-void
.end method

.method private static b(Lcom/dolphin/browser/DolphinService/Account/a;)Z
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/dolphin/browser/DolphinService/e;->b(Lcom/dolphin/browser/DolphinService/Account/a;)Ljava/io/File;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/c;->b()V

    .line 70
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lcom/dolphin/browser/DolphinService/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/d;-><init>(Lcom/dolphin/browser/DolphinService/c;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 92
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/DolphinService/Account/a;)V
    .locals 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/c;->b:Lcom/dolphin/browser/DolphinService/Account/a;

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/c;->b:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/c;->b(Lcom/dolphin/browser/DolphinService/Account/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/c;->c()V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/c;->d()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/DolphinService/Account/a;Z)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/c;->b:Lcom/dolphin/browser/DolphinService/Account/a;

    .line 35
    if-eqz p2, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/c;->d()V

    .line 38
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/c;->b:Lcom/dolphin/browser/DolphinService/Account/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/c;->b:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/c;->b:Lcom/dolphin/browser/DolphinService/Account/a;

    .line 59
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/c;->setChanged()V

    .line 97
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/c;->notifyObservers()V

    .line 98
    return-void
.end method
