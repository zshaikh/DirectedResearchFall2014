.class public Lcom/dolphin/browser/m/c;
.super Ljava/lang/Object;
.source "PopupConfig.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "reminder_count"

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->b:Ljava/lang/String;

    .line 22
    const-string v0, "user_confirmed"

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->c:Ljava/lang/String;

    .line 23
    const-string v0, "last_remind_time"

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->d:Ljava/lang/String;

    .line 26
    const-string v0, "popup"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "reminder_count"

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->b:Ljava/lang/String;

    .line 22
    const-string v0, "user_confirmed"

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->c:Ljava/lang/String;

    .line 23
    const-string v0, "last_remind_time"

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->d:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "reminder_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user_confirmed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->c:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "last_remind_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->d:Ljava/lang/String;

    .line 34
    const-string v0, "popup"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    .line 35
    return-void
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 112
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/m/c;->b(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/dolphin/browser/m/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-static {v0}, Lcom/dolphin/browser/m/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 67
    return-void
.end method

.method public a(J)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/dolphin/browser/m/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-static {v0}, Lcom/dolphin/browser/m/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 87
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/m/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-static {v0}, Lcom/dolphin/browser/m/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/dolphin/browser/m/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "current_version_popup_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    const-string v1, "first_use_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-static {v0}, Lcom/dolphin/browser/m/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 107
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    const-string v1, "current_version_popup_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-static {v0}, Lcom/dolphin/browser/m/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 57
    return-void
.end method

.method public c()I
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/dolphin/browser/m/c;->b:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/dolphin/browser/m/c;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()J
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/dolphin/browser/m/c;->d:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    invoke-virtual {p0}, Lcom/dolphin/browser/m/c;->c()I

    move-result v2

    .line 92
    add-int/lit8 v2, v2, -0x1

    .line 93
    iget-object v3, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/dolphin/browser/m/c;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->b:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-static {v3}, Lcom/dolphin/browser/m/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 97
    return-void
.end method

.method public g()J
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/m/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "first_use_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
