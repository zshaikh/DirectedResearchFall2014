.class Lcom/facebook/orca/app/OrcaInjector$PhoneNumberUtilProvider;
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
        "Lcom/google/i18n/phonenumbers/PhoneNumberUtil;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$PhoneNumberUtilProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2099
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$PhoneNumberUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1

    .prologue
    .line 2103
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2099
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$PhoneNumberUtilProvider;->a()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    return-object v0
.end method
