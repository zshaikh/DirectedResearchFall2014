.class public Lorg/apache/james/mime4j/field/DefaultFieldParser;
.super Lorg/apache/james/mime4j/field/DelegatingFieldParser;
.source "DefaultFieldParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DelegatingFieldParser;-><init>()V

    .line 25
    const-string v0, "Content-Transfer-Encoding"

    sget-object v1, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 27
    const-string v0, "Content-Type"

    sget-object v1, Lorg/apache/james/mime4j/field/ContentTypeField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 28
    const-string v0, "Content-Disposition"

    sget-object v1, Lorg/apache/james/mime4j/field/ContentDispositionField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-virtual {p0, v0, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 31
    sget-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    .line 32
    const-string v1, "Date"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 33
    const-string v1, "Resent-Date"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 35
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxListField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    .line 36
    const-string v1, "From"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 37
    const-string v1, "Resent-From"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 39
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    .line 40
    const-string v1, "Sender"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 41
    const-string v1, "Resent-Sender"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 43
    sget-object v0, Lorg/apache/james/mime4j/field/AddressListField;->a:Lorg/apache/james/mime4j/field/FieldParser;

    .line 44
    const-string v1, "To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 45
    const-string v1, "Resent-To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 46
    const-string v1, "Cc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 47
    const-string v1, "Resent-Cc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 48
    const-string v1, "Bcc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 49
    const-string v1, "Resent-Bcc"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 50
    const-string v1, "Reply-To"

    invoke-virtual {p0, v1, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->a(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 51
    return-void
.end method
