.class final Lcom/acmeaom/android/a/f/j;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 147
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    if-nez v2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {}, Lcom/acmeaom/android/a/f/g;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Lcom/acmeaom/android/a/f/g;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    invoke-static {v0, v2}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 157
    invoke-static {v2, v0, v1}, Lcom/acmeaom/android/a/f/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
