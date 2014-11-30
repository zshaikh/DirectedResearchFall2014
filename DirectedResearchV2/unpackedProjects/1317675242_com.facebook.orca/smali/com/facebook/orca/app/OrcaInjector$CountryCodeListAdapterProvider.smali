.class Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;
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
        "Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;
    .locals 6

    .prologue
    .line 650
    new-instance v2, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Landroid/content/res/Resources;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    invoke-direct {v2, v3, v0, v1, p0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Landroid/content/res/Resources;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$CountryCodeListAdapterProvider;->a()Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    move-result-object v0

    return-object v0
.end method
