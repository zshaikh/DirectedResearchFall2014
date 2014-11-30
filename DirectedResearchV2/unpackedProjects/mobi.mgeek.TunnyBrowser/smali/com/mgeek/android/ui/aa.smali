.class public Lcom/mgeek/android/ui/aa;
.super Landroid/view/View;
.source "HelperCoverWindow.java"


# static fields
.field private static d:Lcom/mgeek/android/ui/aa;


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:I

.field private c:Landroid/content/Context;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mgeek/android/ui/aa;->a:Landroid/view/WindowManager;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/mgeek/android/ui/aa;->b:I

    .line 32
    iput-object p1, p0, Lcom/mgeek/android/ui/aa;->c:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgeek/android/ui/aa;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/mgeek/android/ui/aa;->d:Lcom/mgeek/android/ui/aa;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/mgeek/android/ui/aa;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/aa;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgeek/android/ui/aa;->d:Lcom/mgeek/android/ui/aa;

    .line 39
    :cond_0
    sget-object v0, Lcom/mgeek/android/ui/aa;->d:Lcom/mgeek/android/ui/aa;

    invoke-direct {v0, p0}, Lcom/mgeek/android/ui/aa;->b(Landroid/content/Context;)V

    .line 40
    sget-object v0, Lcom/mgeek/android/ui/aa;->d:Lcom/mgeek/android/ui/aa;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mgeek/android/ui/aa;->c:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 156
    iput-object p1, p0, Lcom/mgeek/android/ui/aa;->c:Landroid/content/Context;

    .line 157
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/mgeek/android/ui/aa;->a:Landroid/view/WindowManager;

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/mgeek/android/ui/aa;->e:Z

    .line 163
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
