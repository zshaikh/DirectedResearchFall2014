.class public Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EnterPhoneNumberActivity.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Landroid/content/res/Resources;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Landroid/content/res/Resources;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 425
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 418
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->d:Ljava/util/List;

    .line 426
    iput-object p1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a:Landroid/content/Context;

    .line 427
    iput-object p2, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->b:Landroid/view/LayoutInflater;

    .line 428
    iput-object p4, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->c:Landroid/content/res/Resources;

    .line 429
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v0

    .line 430
    array-length v1, v0

    move v2, v8

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 431
    new-instance v4, Ljava/util/Locale;

    const-string v5, "en"

    invoke-direct {v4, v5, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-virtual {p3, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v5

    .line 434
    if-eqz v5, :cond_0

    .line 435
    iget-object v6, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->d:Ljava/util/List;

    new-instance v7, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    invoke-direct {v7, v3, v4, v5}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->d:Ljava/util/List;

    new-instance v2, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter$1;-><init>(Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;Ljava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 448
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    const-string v2, "ZZ"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v8}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v8, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 450
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->e:Ljava/util/Map;

    move v1, v8

    .line 451
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    .line 453
    iget-object v2, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->e:Ljava/util/Map;

    iget-object v0, v0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 455
    :cond_2
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 459
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(I)Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 479
    .line 480
    if-nez p2, :cond_1

    .line 481
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030015

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 483
    :goto_0
    invoke-virtual {p0, p1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a(I)Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    move-result-object v2

    .line 484
    const v0, 0x7f080063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 485
    const v0, 0x7f080064

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    if-lez p1, :cond_0

    .line 488
    iget-object v3, v2, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->c:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :goto_1
    return-object v1

    .line 491
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a(I)Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 474
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 499
    .line 500
    if-nez p2, :cond_0

    .line 501
    iget-object v0, p0, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 503
    :goto_0
    const v0, 0x7f08006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 504
    invoke-virtual {p0, p1}, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryCodeListAdapter;->a(I)Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;

    move-result-object v2

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    iget-object v4, v2, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v4, " (+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget v2, v2, Lcom/facebook/orca/auth/EnterPhoneNumberActivity$CountryInfo;->c:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
