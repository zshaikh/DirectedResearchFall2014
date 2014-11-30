.class public Lorg/apache/james/mime4j/field/address/Group;
.super Lorg/apache/james/mime4j/field/address/Address;
.source "Group.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/apache/james/mime4j/field/address/MailboxList;


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/Group;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    const/4 v1, 0x1

    .line 114
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/Group;->b:Lorg/apache/james/mime4j/field/address/MailboxList;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/MailboxList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/address/Mailbox;

    .line 115
    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x0

    .line 121
    :goto_1
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/Mailbox;->a(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 118
    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 125
    :cond_1
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
