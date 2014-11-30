.class final Lcom/twitter/android/client/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/client/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/e;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "sound_effects"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/e;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/client/e;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "font_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/e;

    const-string v1, "font_size"

    const-string v2, "14"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/twitter/android/client/e;->b:F

    goto :goto_0
.end method
