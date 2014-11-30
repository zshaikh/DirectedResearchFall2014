.class public Lam/sunrise/android/calendar/ui/settings/b/f;
.super Ljava/lang/Object;
.source "PreferenceEntry.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Intent;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static a()Lam/sunrise/android/calendar/ui/settings/b/f;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/b/f;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/settings/b/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Lam/sunrise/android/calendar/ui/settings/b/f;
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->a:I

    .line 36
    return-object p0
.end method

.method public a(Landroid/content/Intent;Ljava/lang/Class;)Lam/sunrise/android/calendar/ui/settings/b/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lam/sunrise/android/calendar/ui/settings/b/f;"
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->g:Landroid/content/Intent;

    .line 74
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->f:Ljava/lang/Class;

    .line 75
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lam/sunrise/android/calendar/ui/settings/b/f;
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->d:Ljava/lang/CharSequence;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->b:I

    .line 48
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/settings/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lam/sunrise/android/calendar/ui/settings/b/f;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->g:Landroid/content/Intent;

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->g:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->f:Ljava/lang/Class;

    .line 69
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lam/sunrise/android/calendar/ui/settings/b/f;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->h:Ljava/lang/String;

    .line 80
    iput p2, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->i:I

    .line 81
    return-object p0
.end method

.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->g:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->f:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->g:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->f:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->g:Landroid/content/Intent;

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->a:I

    return v0
.end method

.method public b(I)Lam/sunrise/android/calendar/ui/settings/b/f;
    .locals 1

    .prologue
    .line 40
    iput p1, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->b:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->d:Ljava/lang/CharSequence;

    .line 42
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lam/sunrise/android/calendar/ui/settings/b/f;
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->e:Ljava/lang/CharSequence;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->c:I

    .line 60
    return-object p0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->b:I

    return v0
.end method

.method public c(I)Lam/sunrise/android/calendar/ui/settings/b/f;
    .locals 1

    .prologue
    .line 52
    iput p1, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->c:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->e:Ljava/lang/CharSequence;

    .line 54
    return-object p0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->c:I

    return v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/b/f;->i:I

    return v0
.end method
