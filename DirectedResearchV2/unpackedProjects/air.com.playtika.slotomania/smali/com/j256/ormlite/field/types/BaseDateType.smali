.class public abstract Lcom/j256/ormlite/field/types/BaseDateType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "BaseDateType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    }
.end annotation


# static fields
.field public static final defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSSSSS"

    invoke-direct {v0, v1}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/field/types/BaseDateType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 24
    return-void
.end method

.method protected static convertDateStringConfig(Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    .locals 2
    .param p0, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    sget-object v1, Lcom/j256/ormlite/field/types/BaseDateType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    .line 34
    :goto_0
    return-object v1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->getDataTypeConfigObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    .line 31
    .local v0, "configObj":Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    if-nez v0, :cond_1

    .line 32
    sget-object v1, Lcom/j256/ormlite/field/types/BaseDateType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 34
    goto :goto_0
.end method

.method protected static normalizeDateString(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "formatConfig"    # Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v1

    .line 46
    .local v1, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 47
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static parseDateString(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "formatConfig"    # Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 40
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidForVersion()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "currentValue"    # Ljava/lang/Object;

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 78
    .local v0, "newVal":J
    if-nez p1, :cond_0

    .line 79
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 83
    .end local p1    # "currentValue":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 80
    .restart local p1    # "currentValue":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/util/Date;

    .end local p1    # "currentValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 81
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method
