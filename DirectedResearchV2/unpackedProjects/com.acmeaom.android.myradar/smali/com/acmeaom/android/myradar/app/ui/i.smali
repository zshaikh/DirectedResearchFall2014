.class Lcom/acmeaom/android/myradar/app/ui/i;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/f/y;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private c:Lcom/acmeaom/android/a/f/o;

.field private d:Landroid/widget/EditText;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private final j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->a:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->b:Landroid/content/SharedPreferences;

    .line 50
    const v0, 0x7f0b0042

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->j:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/acmeaom/android/myradar/app/ui/g;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/acmeaom/android/myradar/app/ui/i;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/ui/i;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->i:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/ui/i;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->d:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/ui/i;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->g:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/acmeaom/android/myradar/app/ui/i;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->i()V

    return-void
.end method

.method static synthetic b(Lcom/acmeaom/android/myradar/app/ui/i;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/acmeaom/android/myradar/app/ui/i;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->h:Landroid/widget/TextView;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->g:Landroid/widget/TextView;

    const-string v1, "Server error"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->f:Ljava/lang/String;

    .line 82
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->e:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->e()V

    .line 85
    return-void
.end method

.method static synthetic c(Lcom/acmeaom/android/myradar/app/ui/i;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->h()V

    return-void
.end method

.method static synthetic d(Lcom/acmeaom/android/myradar/app/ui/i;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->g:Landroid/widget/TextView;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->h:Landroid/widget/TextView;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->e()V

    .line 100
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/acmeaom/android/a/c/a;->a()Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/myradar/app/ui/j;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/myradar/app/ui/j;-><init>(Lcom/acmeaom/android/myradar/app/ui/i;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->c:Lcom/acmeaom/android/a/f/o;

    .line 110
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->g:Landroid/widget/TextView;

    const-string v1, "Blocked by owner"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->h:Landroid/widget/TextView;

    const-string v1, "Blocked by owner"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "Loading..."

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->e:Ljava/lang/String;

    .line 125
    const-string v0, "Loading..."

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->f:Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->i()V

    .line 128
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->c:Lcom/acmeaom/android/a/f/o;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->c:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/f/o;->a()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->c:Lcom/acmeaom/android/a/f/o;

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->d()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-static {}, Lcom/acmeaom/android/a/f/o;->c()Lcom/acmeaom/android/a/f/o;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->c:Lcom/acmeaom/android/a/f/o;

    .line 140
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->c:Lcom/acmeaom/android/a/f/o;

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/a/f/o;->a(Lcom/acmeaom/android/a/f/y;)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/f/o;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    const-string v0, "fi2"

    const-string v1, "FIBStatic"

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/f/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->a:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 152
    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 153
    iget-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->h()V

    .line 155
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/f/o;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 55
    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/acmeaom/android/a/a/b/k;

    if-eqz v0, :cond_2

    .line 56
    check-cast p2, Lcom/acmeaom/android/a/a/b/k;

    const-string v0, "d"

    invoke-virtual {p2, v0}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/a/b/ad;

    .line 58
    const-string v1, "Result: %@"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/acmeaom/android/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    if-eqz v0, :cond_0

    const-class v1, Lcom/acmeaom/android/a/a/b/k;

    invoke-interface {v0, v1}, Lcom/acmeaom/android/a/a/b/ad;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 60
    check-cast v1, Lcom/acmeaom/android/a/a/b/k;

    const-string v2, "ACTypeString"

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/acmeaom/android/myradar/app/ui/i;->e:Ljava/lang/String;

    .line 61
    check-cast v0, Lcom/acmeaom/android/a/a/b/k;

    const-string v1, "Owner"

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/acmeaom/android/myradar/app/ui/i;->f:Ljava/lang/String;

    .line 72
    :goto_0
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->e()V

    .line 73
    return-void

    .line 62
    :cond_0
    if-eqz v0, :cond_1

    const-class v1, Lcom/acmeaom/android/a/a/b/aa;

    invoke-interface {v0, v1}, Lcom/acmeaom/android/a/a/b/ad;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/acmeaom/android/a/a/b/aa;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/aa;->b()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->f()V

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->c()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->b()V

    goto :goto_0
.end method

.method public b(Lcom/acmeaom/android/a/f/o;)Ljava/util/Map;
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/acmeaom/android/myradar/app/ui/i;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ident"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/k;->a([Ljava/lang/Object;)Lcom/acmeaom/android/a/a/b/k;

    move-result-object v0

    return-object v0
.end method
