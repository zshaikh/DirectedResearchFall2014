.class final Lorg/apache/james/mime4j/field/MailboxField$1;
.super Ljava/lang/Object;
.source "MailboxField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxField;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/MailboxField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    return-object v0
.end method