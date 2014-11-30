.class Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter$1;
.super Ljava/lang/Object;
.source "EnterPhoneNumberActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/text/Collator;

.field final synthetic b:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;


# direct methods
.method constructor <init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter$1;->b:Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;

    iput-object p2, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter$1;->a:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;)I
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter$1;->a:Ljava/text/Collator;

    iget-object v1, p1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 440
    check-cast p1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    check-cast p2, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter$1;->a(Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;)I

    move-result v0

    return v0
.end method
