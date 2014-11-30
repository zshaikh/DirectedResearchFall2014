.class public Lorg/apache/james/mime4j/field/address/MailboxList;
.super Ljava/util/AbstractList;
.source "MailboxList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lorg/apache/james/mime4j/field/address/Mailbox;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(I)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/address/Mailbox;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/MailboxList;->a(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/MailboxList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
