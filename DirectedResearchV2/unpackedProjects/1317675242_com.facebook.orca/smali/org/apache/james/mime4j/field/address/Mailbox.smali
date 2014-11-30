.class public Lorg/apache/james/mime4j/field/address/Mailbox;
.super Lorg/apache/james/mime4j/field/address/Address;
.source "Mailbox.java"


# static fields
.field private static final a:Lorg/apache/james/mime4j/field/address/DomainList;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lorg/apache/james/mime4j/field/address/DomainList;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/List;Z)V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Mailbox;->a:Lorg/apache/james/mime4j/field/address/DomainList;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->d:Ljava/lang/String;

    .line 284
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->e:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->c:Lorg/apache/james/mime4j/field/address/DomainList;

    if-eqz v0, :cond_6

    move v0, v3

    :goto_0
    and-int/2addr v0, p1

    .line 186
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v0, :cond_7

    :cond_0
    move v1, v3

    .line 188
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    if-eqz v1, :cond_2

    .line 196
    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    :cond_2
    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->c:Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/DomainList;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 207
    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Mailbox;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_4
    if-eqz v1, :cond_5

    .line 212
    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v2

    .line 185
    goto :goto_0

    :cond_7
    move v1, v2

    .line 186
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 265
    if-ne p1, p0, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    .line 267
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/Mailbox;

    if-nez v0, :cond_1

    .line 268
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_1
    check-cast p1, Lorg/apache/james/mime4j/field/address/Mailbox;

    .line 271
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Mailbox;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/Mailbox;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/Mailbox;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
