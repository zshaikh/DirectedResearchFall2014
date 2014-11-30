.class Lcom/facebook/orca/app/OrcaInjector$OrcaSharedPreferencesProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaSharedPreferencesProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1375
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaSharedPreferencesProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/prefs/OrcaSharedPreferences;
    .locals 4

    .prologue
    .line 1379
    new-instance v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaSharedPreferencesProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaSharedPreferencesProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;

    invoke-direct {v0, v1, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;-><init>(Landroid/content/Context;Lcom/facebook/orca/prefs/PrefsDbOpenHelper;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaSharedPreferencesProvider;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    move-result-object v0

    return-object v0
.end method
