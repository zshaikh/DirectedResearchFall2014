.class public Lcom/dolphin/browser/DolphinService/Account/b;
.super Ljava/lang/Object;
.source "AccountManager.java"


# static fields
.field static a:Lcom/dolphin/browser/DolphinService/Account/m;

.field private static b:Lcom/dolphin/browser/DolphinService/Account/b;

.field private static c:Ljava/util/regex/Pattern;


# instance fields
.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Lcom/dolphin/browser/DolphinService/Account/p;

.field private h:Lcom/dolphin/browser/DolphinService/Account/a;

.field private i:I

.field private j:Lcom/dolphin/browser/util/BaseObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/BaseObservable",
            "<",
            "Lcom/dolphin/browser/DolphinService/Account/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->e:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->c(Landroid/content/SharedPreferences;)Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/p;->a(Landroid/content/SharedPreferences;)Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    const-string v1, "pref_client_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->f:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->f:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_client_id"

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/b;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->i:I

    .line 64
    new-instance v0, Lcom/dolphin/browser/util/BaseObservable;

    invoke-direct {v0}, Lcom/dolphin/browser/util/BaseObservable;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->j:Lcom/dolphin/browser/util/BaseObservable;

    .line 65
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->k()V

    .line 68
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 166
    packed-switch p1, :pswitch_data_0

    .line 175
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupport reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :pswitch_1
    const-string v1, "empty_email"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 170
    :pswitch_2
    const-string v1, "invalid_email"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 172
    :pswitch_3
    const-string v1, "email_too_long"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/Account/b;)Lcom/dolphin/browser/DolphinService/Account/a;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->l()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/DolphinService/Account/b;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/dolphin/browser/DolphinService/Account/b;->b:Lcom/dolphin/browser/DolphinService/Account/b;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call AccountManager.init(Context) first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    sget-object v0, Lcom/dolphin/browser/DolphinService/Account/b;->b:Lcom/dolphin/browser/DolphinService/Account/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/dolphin/browser/DolphinService/Account/b;->b:Lcom/dolphin/browser/DolphinService/Account/b;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/dolphin/browser/DolphinService/Account/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/Account/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/DolphinService/Account/b;->b:Lcom/dolphin/browser/DolphinService/Account/b;

    .line 75
    :cond_0
    sget-object v0, Lcom/dolphin/browser/DolphinService/Account/b;->b:Lcom/dolphin/browser/DolphinService/Account/b;

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/DolphinService/Account/a;)V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->j:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/BaseObservable;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/DolphinService/Account/l;

    .line 616
    invoke-interface {v0, p1}, Lcom/dolphin/browser/DolphinService/Account/l;->a(Lcom/dolphin/browser/DolphinService/Account/a;)V

    goto :goto_0

    .line 618
    :cond_0
    return-void
.end method

.method private a(Lcom/dolphin/browser/DolphinService/Account/a;Z)V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->j:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/BaseObservable;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/DolphinService/Account/l;

    .line 630
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/DolphinService/Account/l;->a(Lcom/dolphin/browser/DolphinService/Account/a;Z)V

    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->j:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/BaseObservable;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/DolphinService/Account/l;

    .line 623
    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/DolphinService/Account/l;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 625
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 232
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupport reason"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :pswitch_1
    const-string v1, "empty_password"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 229
    :goto_0
    return v0

    .line 227
    :pswitch_2
    const-string v1, "password_too_short"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 229
    :pswitch_3
    const-string v1, "invalid_password"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 137
    sget-object v1, Lcom/dolphin/browser/DolphinService/Account/b;->c:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    .line 138
    const-string v1, "^[-!#$%&\'*+/=?^_`{}|~A-Z0-9]+(\\.[-!#$%&\'*+/=?^_`{}|~A-Z0-9]+)*@(?:[A-Z0-9](?:[A-Z0-9-]{0,61}[A-Z0-9])?\\.)+[A-Z]{2,6}\\.?$"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/DolphinService/Account/b;->c:Ljava/util/regex/Pattern;

    .line 144
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    const/4 v0, 0x1

    .line 158
    :cond_1
    :goto_0
    return v0

    .line 148
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_3

    .line 149
    const/4 v0, 0x3

    goto :goto_0

    .line 150
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    .line 154
    sget-object v1, Lcom/dolphin/browser/DolphinService/Account/b;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 2

    .prologue
    .line 212
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const-string v0, "!@#$%^&*()_+-=[]{}\\|;\':\",.<>/?"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const/4 v0, 0x1

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 190
    const/4 v1, 0x6

    if-ge v2, v1, :cond_2

    .line 191
    const/4 v0, 0x2

    goto :goto_0

    .line 194
    :cond_2
    const/16 v1, 0x14

    if-le v2, v1, :cond_3

    .line 195
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    move v1, v0

    .line 198
    :goto_1
    if-ge v1, v2, :cond_0

    .line 199
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 200
    invoke-static {v3}, Lcom/dolphin/browser/DolphinService/Account/b;->b(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 201
    const/4 v0, 0x4

    goto :goto_0

    .line 198
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/a;->f(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 349
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v1, Lcom/dolphin/browser/DolphinService/Account/h;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/Account/h;-><init>(Lcom/dolphin/browser/DolphinService/Account/b;)V

    new-instance v2, Lcom/dolphin/browser/DolphinService/Account/i;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/Account/i;-><init>(Lcom/dolphin/browser/DolphinService/Account/b;)V

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 371
    return-void
.end method

.method private l()Lcom/dolphin/browser/DolphinService/Account/a;
    .locals 3

    .prologue
    .line 374
    const-string v0, "AccountManager"

    const-string v1, "refreshAccountInfoSync"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    .line 376
    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the current token is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->i:I

    if-eqz v0, :cond_1

    .line 381
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/dolphin/browser/DolphinService/Account/b;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;I)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 386
    :goto_0
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 388
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    if-nez v1, :cond_2

    .line 389
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    .line 393
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    iget v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->i:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/a;->a(I)V

    .line 395
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/a;->d(Landroid/content/SharedPreferences;)V

    .line 397
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lcom/dolphin/browser/DolphinService/Account/a;Z)V

    .line 398
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    return-object v0

    .line 384
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->d(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/DolphinService/Account/a;->b(Lorg/json/JSONObject;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/io/File;)I
    .locals 3

    .prologue
    .line 343
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v2}, Lcom/dolphin/browser/DolphinService/Account/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 345
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/Account/p;
    .locals 2

    .prologue
    .line 285
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "username not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    invoke-static {p2}, Lcom/dolphin/browser/DolphinService/Account/b;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 296
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/Account/p;
    .locals 6

    .prologue
    .line 552
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    iget-object v5, p0, Lcom/dolphin/browser/DolphinService/Account/b;->f:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 556
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/p;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    if-nez v0, :cond_2

    .line 405
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/p;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/Account/b;->e:Landroid/content/Context;

    invoke-virtual {v0, v3, v4}, Lcom/dolphin/browser/DolphinService/Account/p;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 413
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 415
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    if-nez v0, :cond_4

    .line 416
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/a;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v3, v0

    move v0, v1

    .line 427
    :goto_2
    iget-object v5, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v5, v2}, Lcom/dolphin/browser/DolphinService/Account/a;->a(Z)V

    .line 428
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    iget v2, p0, Lcom/dolphin/browser/DolphinService/Account/b;->i:I

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/DolphinService/Account/a;->a(I)V

    .line 429
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/DolphinService/Account/a;->d(Landroid/content/SharedPreferences;)V

    .line 431
    if-eqz v0, :cond_5

    .line 432
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lcom/dolphin/browser/DolphinService/Account/a;)V

    .line 436
    :goto_3
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    return-object v0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/DolphinService/Account/p;->b(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 418
    goto :goto_1

    .line 420
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v3, p1}, Lcom/dolphin/browser/DolphinService/Account/a;->b(Lorg/json/JSONObject;)V

    .line 422
    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    move v3, v2

    .line 424
    goto :goto_2

    .line 434
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-direct {p0, v0, v3}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lcom/dolphin/browser/DolphinService/Account/a;Z)V

    goto :goto_3

    :cond_6
    move v0, v2

    move v3, v1

    goto :goto_2
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 525
    iput p1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->i:I

    .line 526
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/Account/l;)V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->j:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/util/BaseObservable;->addListener(Ljava/lang/Object;)V

    .line 607
    return-void
.end method

.method public a(Ljava/io/File;Lcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v1, Lcom/dolphin/browser/DolphinService/Account/g;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/DolphinService/Account/g;-><init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/io/File;)V

    invoke-direct {v0, v1, p2}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 339
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p1, v1}, Lcom/dolphin/browser/DolphinService/Account/a;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lcom/dolphin/browser/DolphinService/Account/a;Z)V

    .line 95
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v1, Lcom/dolphin/browser/DolphinService/Account/j;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/DolphinService/Account/j;-><init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 451
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v1, Lcom/dolphin/browser/DolphinService/Account/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/DolphinService/Account/e;-><init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p3}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 282
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 7

    .prologue
    .line 539
    new-instance v6, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v0, Lcom/dolphin/browser/DolphinService/Account/k;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/Account/k;-><init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0, p5}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v6, v0}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 547
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 256
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/b;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "username not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    invoke-static {p2}, Lcom/dolphin/browser/DolphinService/Account/b;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->f:Ljava/lang/String;

    .line 265
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/dolphin/browser/DolphinService/WebService/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 268
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/p;

    .line 269
    return-void

    .line 264
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 7

    .prologue
    .line 244
    new-instance v6, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v0, Lcom/dolphin/browser/DolphinService/Account/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/Account/c;-><init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v6, v0, p5}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v6, v0}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 253
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 315
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/b;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current password not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    invoke-static {p2}, Lcom/dolphin/browser/DolphinService/Account/b;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "new password not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/dolphin/browser/DolphinService/WebService/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 326
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/Account/p;
    .locals 6

    .prologue
    .line 574
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    iget-object v5, p0, Lcom/dolphin/browser/DolphinService/Account/b;->f:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/WebService/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 578
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->b(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/DolphinService/Account/l;)V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->j:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/util/BaseObservable;->removeListener(Ljava/lang/Object;)V

    .line 611
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 2

    .prologue
    .line 302
    new-instance v0, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v1, Lcom/dolphin/browser/DolphinService/Account/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/DolphinService/Account/f;-><init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p3}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 310
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/DolphinService/WebService/a;)V
    .locals 7

    .prologue
    .line 561
    new-instance v6, Lcom/dolphin/browser/DolphinService/WebService/d;

    new-instance v0, Lcom/dolphin/browser/DolphinService/Account/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/Account/d;-><init>(Lcom/dolphin/browser/DolphinService/Account/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0, p5}, Lcom/dolphin/browser/DolphinService/WebService/d;-><init>(Lcom/dolphin/browser/DolphinService/WebService/c;Lcom/dolphin/browser/DolphinService/WebService/a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v6, v0}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 569
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v1

    .line 100
    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->d()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    .line 105
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/p;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/dolphin/browser/DolphinService/Account/p;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Lcom/dolphin/browser/DolphinService/WebService/g;->a()Lcom/dolphin/browser/DolphinService/WebService/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/DolphinService/WebService/g;->c(Ljava/lang/String;)Lcom/dolphin/browser/DolphinService/WebService/f;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/f;->a()Ljava/lang/Object;

    .line 456
    return-void
.end method

.method public e()Lcom/dolphin/browser/DolphinService/Account/a;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    return-object v0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/b;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/Account/p;->b(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->g:Lcom/dolphin/browser/DolphinService/Account/p;

    .line 495
    :cond_0
    return-void
.end method

.method public g()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/Account/b;->f()V

    .line 501
    const/4 v0, -0x1

    .line 503
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    if-eqz v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->j()I

    move-result v0

    .line 506
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 512
    iget-object v3, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    iget-object v4, p0, Lcom/dolphin/browser/DolphinService/Account/b;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/DolphinService/Account/a;->e(Landroid/content/SharedPreferences;)V

    .line 513
    iput-object v2, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    .line 516
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Ljava/lang/String;I)V

    .line 517
    const-string v0, "AccountManager"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->h:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/a;->j()I

    move-result v0

    .line 532
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolphin/browser/DolphinService/Account/b;->i:I

    goto :goto_0
.end method
