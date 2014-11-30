.class public Ldolphin/webkit/L10nUtils;
.super Ljava/lang/Object;
.source "L10nUtils.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static a:[I

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/16 v0, 0x39

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Ldolphin/webkit/R$string;->autofill_address_name_separator:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Ldolphin/webkit/R$string;->autofill_address_summary_name_format:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Ldolphin/webkit/R$string;->autofill_address_summary_separator:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Ldolphin/webkit/R$string;->autofill_address_summary_format:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Ldolphin/webkit/R$string;->autofill_attention_ignored_re:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Ldolphin/webkit/R$string;->autofill_region_ignored_re:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Ldolphin/webkit/R$string;->autofill_company_re:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Ldolphin/webkit/R$string;->autofill_address_line_1_re:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Ldolphin/webkit/R$string;->autofill_address_line_1_label_re:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Ldolphin/webkit/R$string;->autofill_address_line_2_re:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Ldolphin/webkit/R$string;->autofill_address_line_3_re:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Ldolphin/webkit/R$string;->autofill_country_re:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Ldolphin/webkit/R$string;->autofill_zip_code_re:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Ldolphin/webkit/R$string;->autofill_zip_4_re:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Ldolphin/webkit/R$string;->autofill_city_re:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Ldolphin/webkit/R$string;->autofill_state_re:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Ldolphin/webkit/R$string;->autofill_address_type_same_as_re:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Ldolphin/webkit/R$string;->autofill_address_type_use_my_re:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Ldolphin/webkit/R$string;->autofill_billing_designator_re:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Ldolphin/webkit/R$string;->autofill_shipping_designator_re:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Ldolphin/webkit/R$string;->autofill_email_re:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Ldolphin/webkit/R$string;->autofill_username_re:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Ldolphin/webkit/R$string;->autofill_name_re:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Ldolphin/webkit/R$string;->autofill_name_specific_re:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Ldolphin/webkit/R$string;->autofill_first_name_re:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Ldolphin/webkit/R$string;->autofill_middle_initial_re:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Ldolphin/webkit/R$string;->autofill_middle_name_re:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Ldolphin/webkit/R$string;->autofill_last_name_re:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Ldolphin/webkit/R$string;->autofill_phone_re:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Ldolphin/webkit/R$string;->autofill_area_code_re:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Ldolphin/webkit/R$string;->autofill_phone_prefix_re:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Ldolphin/webkit/R$string;->autofill_phone_suffix_re:I

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Ldolphin/webkit/R$string;->autofill_phone_extension_re:I

    aput v2, v0, v1

    const/16 v1, 0x21

    sget v2, Ldolphin/webkit/R$string;->autofill_name_on_card_re:I

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Ldolphin/webkit/R$string;->autofill_name_on_card_contextual_re:I

    aput v2, v0, v1

    const/16 v1, 0x23

    sget v2, Ldolphin/webkit/R$string;->autofill_card_cvc_re:I

    aput v2, v0, v1

    const/16 v1, 0x24

    sget v2, Ldolphin/webkit/R$string;->autofill_card_number_re:I

    aput v2, v0, v1

    const/16 v1, 0x25

    sget v2, Ldolphin/webkit/R$string;->autofill_expiration_month_re:I

    aput v2, v0, v1

    const/16 v1, 0x26

    sget v2, Ldolphin/webkit/R$string;->autofill_expiration_date_re:I

    aput v2, v0, v1

    const/16 v1, 0x27

    sget v2, Ldolphin/webkit/R$string;->autofill_card_ignored_re:I

    aput v2, v0, v1

    const/16 v1, 0x28

    sget v2, Ldolphin/webkit/R$string;->autofill_fax_re:I

    aput v2, v0, v1

    const/16 v1, 0x29

    sget v2, Ldolphin/webkit/R$string;->autofill_country_code_re:I

    aput v2, v0, v1

    const/16 v1, 0x2a

    sget v2, Ldolphin/webkit/R$string;->autofill_area_code_notext_re:I

    aput v2, v0, v1

    const/16 v1, 0x2b

    sget v2, Ldolphin/webkit/R$string;->autofill_phone_prefix_separator_re:I

    aput v2, v0, v1

    const/16 v1, 0x2c

    sget v2, Ldolphin/webkit/R$string;->autofill_phone_suffix_separator_re:I

    aput v2, v0, v1

    const/16 v1, 0x2d

    sget v2, Ldolphin/webkit/R$string;->autofill_province:I

    aput v2, v0, v1

    const/16 v1, 0x2e

    sget v2, Ldolphin/webkit/R$string;->autofill_postal_code:I

    aput v2, v0, v1

    const/16 v1, 0x2f

    sget v2, Ldolphin/webkit/R$string;->autofill_state:I

    aput v2, v0, v1

    const/16 v1, 0x30

    sget v2, Ldolphin/webkit/R$string;->autofill_zip_code:I

    aput v2, v0, v1

    const/16 v1, 0x31

    sget v2, Ldolphin/webkit/R$string;->autofill_county:I

    aput v2, v0, v1

    const/16 v1, 0x32

    sget v2, Ldolphin/webkit/R$string;->autofill_island:I

    aput v2, v0, v1

    const/16 v1, 0x33

    sget v2, Ldolphin/webkit/R$string;->autofill_district:I

    aput v2, v0, v1

    const/16 v1, 0x34

    sget v2, Ldolphin/webkit/R$string;->autofill_department:I

    aput v2, v0, v1

    const/16 v1, 0x35

    sget v2, Ldolphin/webkit/R$string;->autofill_prefecture:I

    aput v2, v0, v1

    const/16 v1, 0x36

    sget v2, Ldolphin/webkit/R$string;->autofill_parish:I

    aput v2, v0, v1

    const/16 v1, 0x37

    sget v2, Ldolphin/webkit/R$string;->autofill_area:I

    aput v2, v0, v1

    const/16 v1, 0x38

    sget v2, Ldolphin/webkit/R$string;->autofill_emirate:I

    aput v2, v0, v1

    sput-object v0, Ldolphin/webkit/L10nUtils;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
    sget-object v0, Ldolphin/webkit/L10nUtils;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Ldolphin/webkit/L10nUtils;->a:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ldolphin/webkit/L10nUtils;->b:Ljava/util/Map;

    .line 108
    :cond_0
    sget-object v0, Ldolphin/webkit/L10nUtils;->a:[I

    aget v0, v0, p0

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    sget-object v1, Ldolphin/webkit/L10nUtils;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public static getLocalisedString(I)Ljava/lang/String;
    .locals 2
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 115
    sget-object v0, Ldolphin/webkit/L10nUtils;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 118
    invoke-static {p0}, Ldolphin/webkit/L10nUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    sget-object v0, Ldolphin/webkit/L10nUtils;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 122
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 123
    :goto_1
    if-eqz v1, :cond_3

    invoke-static {p0}, Ldolphin/webkit/L10nUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
