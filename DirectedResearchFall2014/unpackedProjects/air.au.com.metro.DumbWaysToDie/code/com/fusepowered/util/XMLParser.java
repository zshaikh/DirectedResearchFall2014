package com.fusepowered.util;

import javax.xml.parsers.*;
import java.io.*;
import android.text.*;
import android.util.*;
import java.util.*;
import org.w3c.dom.*;

public class XMLParser
{
    private static final String TAG = "XMLParser";
    
    private static String getAttributeValue(final NamedNodeMap namedNodeMap, final String s) {
        String nodeValue = null;
        if (namedNodeMap != null) {
            final int length = namedNodeMap.getLength();
            nodeValue = null;
            if (length != 0) {
                final Node namedItem = namedNodeMap.getNamedItem(s);
                nodeValue = null;
                if (namedItem != null) {
                    final String nodeValue2 = namedNodeMap.getNamedItem(s).getNodeValue();
                    nodeValue = null;
                    if (nodeValue2 != null) {
                        nodeValue = namedNodeMap.getNamedItem(s).getNodeValue();
                    }
                }
            }
        }
        return nodeValue;
    }
    
    private static void parseAdContent(final ResponseValues responseValues, final NodeList list) {
        final Ad ad = new Ad();
        ad.setHtmlBody(null);
        ad.setDisplayed(false);
        int i = 0;
    Label_0126_Outer:
        while (i < list.getLength()) {
            final Node item = list.item(i);
            final NamedNodeMap attributes = item.getAttributes();
            final Node namedItem = attributes.getNamedItem("t");
            if (namedItem == null) {
                ad.type = 1;
            }
            else {
                ad.type = Integer.parseInt(namedItem.getNodeValue());
            }
            final String[] array = { "1" };
            final Node namedItem2 = attributes.getNamedItem("w");
            while (true) {
                Label_0318: {
                    if (namedItem2 == null) {
                        break Label_0318;
                    }
                    if (namedItem2.getNodeValue().indexOf(44) == -1) {
                        array[0] = namedItem2.getNodeValue();
                        break Label_0318;
                    }
                    final String[] split = namedItem2.getNodeValue().split(",");
                    final Node namedItem3 = attributes.getNamedItem("tl");
                    if (namedItem3 != null) {
                        ad.tabletLandscape = namedItem3.getNodeValue();
                    }
                    else {
                        ad.tabletLandscape = "";
                    }
                    final Node namedItem4 = attributes.getNamedItem("tp");
                    if (namedItem4 != null) {
                        ad.tabletPortrait = namedItem4.getNodeValue();
                    }
                    else {
                        ad.tabletPortrait = "";
                    }
                    final Node namedItem5 = attributes.getNamedItem("pl");
                    if (namedItem5 != null) {
                        ad.phoneLandscape = namedItem5.getNodeValue();
                    }
                    else {
                        ad.phoneLandscape = "";
                    }
                    final Node namedItem6 = attributes.getNamedItem("pp");
                    if (namedItem6 != null) {
                        ad.phonePortrait = namedItem6.getNodeValue();
                    }
                    else {
                        ad.phonePortrait = "";
                    }
                    for (int n = 0, n2 = 0; n < 5 && n2 < split.length; ++n2) {
                        final int int1 = Integer.parseInt(split[n2]);
                        if (Ad.isValidAdType(int1)) {
                            ad.waterfall[n] = int1;
                            ++n;
                        }
                    }
                    if (attributes.getNamedItem("pw") != null && attributes.getNamedItem("pw").getNodeValue().length() != 0) {
                        ad.pw = Integer.parseInt(attributes.getNamedItem("pw").getNodeValue());
                        ad.ph = Integer.parseInt(attributes.getNamedItem("ph").getNodeValue());
                        ad.lw = Integer.parseInt(attributes.getNamedItem("lw").getNodeValue());
                        ad.lh = Integer.parseInt(attributes.getNamedItem("lh").getNodeValue());
                        ad.o = Integer.parseInt(attributes.getNamedItem("o").getNodeValue());
                    }
                    final String attributeValue = getAttributeValue(attributes, "id");
                    if (!StringUtil.isEmpty(attributeValue)) {
                        ad.setId(Integer.parseInt(attributeValue));
                    }
                    final NodeList childNodes = item.getChildNodes();
                    for (int j = 0; j < childNodes.getLength(); ++j) {
                        final Node item2 = childNodes.item(j);
                        final String nodeName = item2.getNodeName();
                        if (nodeName.equalsIgnoreCase("HTMLBODY")) {
                            final Node firstChild = item2.getFirstChild();
                            if (firstChild != null) {
                                ad.setHtmlBody(firstChild.getNodeValue());
                            }
                        }
                        else if (nodeName.equalsIgnoreCase("ACTION")) {
                            final Node firstChild2 = item2.getFirstChild();
                            if (firstChild2 != null) {
                                ad.setAction(firstChild2.getNodeValue());
                            }
                        }
                    }
                    responseValues.setAd(ad);
                    ++i;
                    continue Label_0126_Outer;
                }
                final String[] split = array;
                continue;
            }
        }
    }
    
    private static void parseFetchDlcList(final String s, final ResponseValues responseValues) throws Exception {
        NodeList elementsByTagName;
        ArrayList<DLC> dlc;
        Node item;
        DLC e;
        NamedNodeMap attributes;
        String attributeValue;
        String attributeValue2;
        String attributeValue3;
        String attributeValue4;
        String attributeValue5;
        String attributeValue6;
        boolean update;
        NodeList childNodes;
        ArrayList<DlcContent> dlcContents;
        DlcContent e2;
        Node item2;
        NamedNodeMap attributes2;
        String attributeValue7;
        String attributeValue8;
        String attributeValue9;
        String attributeValue10;
        String attributeValue11;
        String attributeValue12;
        String attributeValue13;
        boolean purchased;
        String attributeValue14;
        boolean autoDownload;
        String attributeValue15;
        Label_0518_Outer:Label_0556_Outer:
        while (true) {
            while (true) {
            Label_0644:
                while (true) {
                Label_0638:
                    while (true) {
                        Label_0632: {
                            try {
                                elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("dlc");
                                dlc = new ArrayList<DLC>();
                                for (int i = 0; i < elementsByTagName.getLength(); ++i) {
                                    item = elementsByTagName.item(i);
                                    e = new DLC();
                                    attributes = item.getAttributes();
                                    attributeValue = getAttributeValue(attributes, "bytes");
                                    if (!StringUtil.isEmpty(attributeValue)) {
                                        e.setBytes(Integer.parseInt(attributeValue));
                                    }
                                    attributeValue2 = getAttributeValue(attributes, "content_id");
                                    if (!StringUtil.isEmpty(attributeValue2)) {
                                        e.setContentId(Integer.parseInt(attributeValue2));
                                    }
                                    attributeValue3 = getAttributeValue(attributes, "id");
                                    if (!StringUtil.isEmpty(attributeValue3)) {
                                        e.setId(Integer.parseInt(attributeValue3));
                                    }
                                    attributeValue4 = getAttributeValue(attributes, "num_files");
                                    if (!StringUtil.isEmpty(attributeValue4)) {
                                        e.setNumFiles(Integer.parseInt(attributeValue4));
                                    }
                                    attributeValue5 = getAttributeValue(attributes, "product_id");
                                    if (!StringUtil.isEmpty(attributeValue5)) {
                                        e.setProductId(attributeValue5);
                                    }
                                    attributeValue6 = getAttributeValue(attributes, "update");
                                    if (!StringUtil.isEmpty(attributeValue6)) {
                                        if (attributeValue6.equals("0")) {
                                            break Label_0632;
                                        }
                                        update = true;
                                        e.setUpdate(update);
                                    }
                                    childNodes = item.getChildNodes();
                                    dlcContents = new ArrayList<DlcContent>();
                                    for (int j = 0; j < childNodes.getLength(); ++j) {
                                        e2 = new DlcContent();
                                        item2 = childNodes.item(j);
                                        if (item2.getNodeName().equalsIgnoreCase("dlc_content")) {
                                            attributes2 = item2.getAttributes();
                                            attributeValue7 = getAttributeValue(attributes2, "bytes");
                                            if (!StringUtil.isEmpty(attributeValue7)) {
                                                e2.setBytes(Integer.parseInt(attributeValue7));
                                            }
                                            attributeValue8 = getAttributeValue(attributes2, "content_id");
                                            if (!StringUtil.isEmpty(attributeValue8)) {
                                                e2.setContentId(Integer.parseInt(attributeValue8));
                                            }
                                            attributeValue9 = getAttributeValue(attributes2, "downloadpath");
                                            if (!StringUtil.isEmpty(attributeValue9)) {
                                                e2.setDownloadPath(attributeValue9);
                                            }
                                            attributeValue10 = getAttributeValue(attributes2, "id");
                                            if (!StringUtil.isEmpty(attributeValue10)) {
                                                e2.setId(Integer.parseInt(attributeValue10));
                                            }
                                            attributeValue11 = getAttributeValue(attributes2, "md5");
                                            if (!StringUtil.isEmpty(attributeValue11)) {
                                                e2.setMd5(attributeValue11);
                                            }
                                            attributeValue12 = getAttributeValue(attributes2, "parent_id");
                                            if (!StringUtil.isEmpty(attributeValue12)) {
                                                e2.setParentId(Integer.parseInt(attributeValue12));
                                            }
                                            attributeValue13 = getAttributeValue(attributes2, "purchased");
                                            if (!StringUtil.isEmpty(attributeValue13)) {
                                                if (attributeValue13.equals("0")) {
                                                    break Label_0638;
                                                }
                                                purchased = true;
                                                e2.setPurchased(purchased);
                                            }
                                            attributeValue14 = getAttributeValue(attributes2, "auto_download");
                                            if (!StringUtil.isEmpty(attributeValue14)) {
                                                if (attributeValue14.equals("0")) {
                                                    break Label_0644;
                                                }
                                                autoDownload = true;
                                                e2.setAutoDownload(autoDownload);
                                            }
                                            attributeValue15 = getAttributeValue(attributes2, "product_id");
                                            if (!StringUtil.isEmpty(attributeValue15)) {
                                                e2.setProductId(attributeValue15);
                                            }
                                        }
                                        dlcContents.add(e2);
                                    }
                                    e.setDlcContents(dlcContents);
                                    dlc.add(e);
                                }
                                responseValues.setDlc(dlc);
                                return;
                            }
                            catch (Exception ex) {
                                throw ex;
                            }
                        }
                        update = false;
                        continue Label_0518_Outer;
                    }
                    purchased = false;
                    continue Label_0556_Outer;
                }
                autoDownload = false;
                continue;
            }
        }
    }
    
    private static void parseFriendAction(final String s, final ResponseValues responseValues) throws Exception {
        try {
            final NamedNodeMap attributes = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("friend_action").item(0).getAttributes();
            final String attributeValue = getAttributeValue(attributes, "fuse_id");
            if (!StringUtil.isEmpty(attributeValue)) {
                responseValues.setFuseId(attributeValue);
            }
            final String attributeValue2 = getAttributeValue(attributes, "error");
            if (!StringUtil.isEmpty(attributeValue2)) {
                responseValues.setError(attributeValue2);
            }
        }
        catch (Exception ex) {
            throw ex;
        }
    }
    
    private static boolean parseGetAd(final String s, final ResponseValues responseValues) throws Exception {
        while (true) {
            while (true) {
                try {
                    final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("AD_REQUEST");
                    final Ad peekAd = responseValues.peekAd();
                    if (peekAd != null) {
                        if (peekAd.hasHtmlBody()) {
                            final int n = 0;
                            parseAdContent(responseValues, elementsByTagName);
                            final Ad peekAd2 = responseValues.peekAd();
                            boolean b;
                            if (peekAd2 != null && peekAd2.hasHtmlBody()) {
                                b = true;
                            }
                            else {
                                b = false;
                            }
                            return n != 0 && b;
                        }
                    }
                }
                catch (Exception ex) {
                    throw ex;
                }
                final int n = 1;
                continue;
            }
        }
    }
    
    private static void parseGetEnemiesList(final String s, final ResponseValues responseValues) throws Exception {
        while (true) {
        Label_0312_Outer:
            while (true) {
                int n = 0;
            Label_0349:
                while (true) {
                    Label_0343: {
                        try {
                            final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("enemies_list");
                            final ArrayList<Player> enemiesList = new ArrayList<Player>();
                            n = 0;
                            if (n < elementsByTagName.getLength()) {
                                final Node item = elementsByTagName.item(n);
                                final String attributeValue = getAttributeValue(item.getAttributes(), "error");
                                if (!StringUtil.isEmpty(attributeValue)) {
                                    responseValues.setError(attributeValue);
                                }
                                final NodeList childNodes = item.getChildNodes();
                                for (int i = 0; i < childNodes.getLength(); ++i) {
                                    final Player e = new Player();
                                    final NamedNodeMap attributes = childNodes.item(i).getAttributes();
                                    final String attributeValue2 = getAttributeValue(attributes, "account_id");
                                    if (!StringUtil.isEmpty(attributeValue2)) {
                                        e.setAccountId(attributeValue2);
                                    }
                                    final String attributeValue3 = getAttributeValue(attributes, "alias");
                                    if (!StringUtil.isEmpty(attributeValue3)) {
                                        e.setAlias(Html.fromHtml(Html.fromHtml(attributeValue3).toString()).toString());
                                    }
                                    final String attributeValue4 = getAttributeValue(attributes, "fuse_id");
                                    if (!StringUtil.isEmpty(attributeValue4)) {
                                        e.setFuseId(attributeValue4);
                                    }
                                    final String attributeValue5 = getAttributeValue(attributes, "type");
                                    if (!StringUtil.isEmpty(attributeValue5)) {
                                        e.setType(attributeValue5);
                                    }
                                    final String attributeValue6 = getAttributeValue(attributes, "level");
                                    if (!StringUtil.isEmpty(attributeValue6)) {
                                        e.setLevel(Integer.parseInt(attributeValue6));
                                    }
                                    final String attributeValue7 = getAttributeValue(attributes, "can_attack");
                                    if (!StringUtil.isEmpty(attributeValue7)) {
                                        if (Integer.parseInt(attributeValue7) != 1) {
                                            break Label_0343;
                                        }
                                        final boolean canAttack = true;
                                        e.setCanAttack(canAttack);
                                    }
                                    enemiesList.add(e);
                                }
                                break Label_0349;
                            }
                            responseValues.setEnemiesList(enemiesList);
                            return;
                        }
                        catch (Exception ex) {
                            throw ex;
                        }
                    }
                    final boolean canAttack = false;
                    continue;
                }
                ++n;
                continue Label_0312_Outer;
            }
        }
    }
    
    private static void parseGetFriendsList(final String s, final ResponseValues responseValues) throws Exception {
        while (true) {
            while (true) {
                int n;
                try {
                    final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("friends_list");
                    final ArrayList<Player> friendsList = new ArrayList<Player>();
                    n = 0;
                    if (n >= elementsByTagName.getLength()) {
                        responseValues.setFriendsList(friendsList);
                        return;
                    }
                    final Node item = elementsByTagName.item(n);
                    final String attributeValue = getAttributeValue(item.getAttributes(), "error");
                    if (!StringUtil.isEmpty(attributeValue)) {
                        responseValues.setError(attributeValue);
                    }
                    final NodeList childNodes = item.getChildNodes();
                    for (int i = 0; i < childNodes.getLength(); ++i) {
                        final Node item2 = childNodes.item(i);
                        final Player e = new Player();
                        final NamedNodeMap attributes = item2.getAttributes();
                        final String attributeValue2 = getAttributeValue(attributes, "account_id");
                        if (!StringUtil.isEmpty(attributeValue2)) {
                            e.setAccountId(attributeValue2);
                        }
                        final String attributeValue3 = getAttributeValue(attributes, "alias");
                        if (!StringUtil.isEmpty(attributeValue3)) {
                            e.setAlias(Html.fromHtml(Html.fromHtml(attributeValue3).toString()).toString());
                        }
                        final String attributeValue4 = getAttributeValue(attributes, "fuse_id");
                        if (!StringUtil.isEmpty(attributeValue4)) {
                            e.setFuseId(attributeValue4);
                        }
                        final String attributeValue5 = getAttributeValue(attributes, "type");
                        if (!StringUtil.isEmpty(attributeValue5)) {
                            e.setType(attributeValue5);
                        }
                        final String attributeValue6 = getAttributeValue(attributes, "level");
                        if (!StringUtil.isEmpty(attributeValue6)) {
                            e.setLevel(Integer.parseInt(attributeValue6));
                        }
                        final String attributeValue7 = getAttributeValue(attributes, "pending");
                        if (!StringUtil.isEmpty(attributeValue7)) {
                            e.setPending(Integer.parseInt(attributeValue7));
                        }
                        friendsList.add(e);
                    }
                }
                catch (Exception ex) {
                    throw ex;
                }
                ++n;
                continue;
            }
        }
    }
    
    private static void parseGetGamedata(final String s, final ResponseValues responseValues) throws Exception {
        NodeList elementsByTagName;
        GameKeyValuePairs gameKeyValuePairs = null;
        GameKeyValuePairs gameKeyValuePairs2 = null;
        int n = 0;
        NodeList childNodes;
        NodeList childNodes2;
        int n2 = 0;
        Node item;
        NamedNodeMap attributes;
        Node item2;
        String nodeName;
        String attributeValue;
        Node item3;
        String nodeValue;
        String s3;
        String s2 = null;
        String s4 = null;
        int n3 = 0;
        String attributeValue2;
        String attributeValue3;
        int equals;
        String s5;
        String nodeValue2;
        Label_0176_Outer:Label_0061_Outer:
        while (true) {
        Label_0061:
            while (true) {
            Label_0176:
                while (true) {
                    Block_8_Outer:Label_0151_Outer:Label_0247_Outer:
                    while (true) {
                        Label_0483: {
                            Label_0477: {
                                Label_0473: {
                                    while (true) {
                                        try {
                                            elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("game_data");
                                            gameKeyValuePairs = responseValues.getGameKeyValuePairs();
                                            if (gameKeyValuePairs == null) {
                                                gameKeyValuePairs2 = new GameKeyValuePairs();
                                                break Label_0477;
                                            }
                                            break Label_0473;
                                            // iftrue(Label_0392:, n >= childNodes.getLength())
                                            // iftrue(Label_0497:, !item.getNodeName().equalsIgnoreCase("d"))
                                            // iftrue(Label_0356:, !nodeName.equalsIgnoreCase("key"))
                                            // iftrue(Label_0503:, n2 >= childNodes2.getLength())
                                            // iftrue(Label_0449:, n3 >= elementsByTagName.getLength())
                                            // iftrue(Label_0343:, elementsByTagName.getLength() <= 1)
                                            // iftrue(Label_0467:, StringUtil.isEmpty(attributeValue3))
                                        Block_10_Outer:
                                            while (true) {
                                                Block_11: {
                                                    break Block_11;
                                                    while (true) {
                                                        Block_9: {
                                                            while (true) {
                                                            Block_6:
                                                                while (true) {
                                                                    Block_13: {
                                                                        while (true) {
                                                                            item = childNodes2.item(n2);
                                                                            break Block_9;
                                                                            gameKeyValuePairs2.setUser(getAttributeValue(attributes, "user"));
                                                                            childNodes2 = item2.getChildNodes();
                                                                            n2 = 0;
                                                                            break Label_0176;
                                                                            break Block_13;
                                                                            continue Label_0151_Outer;
                                                                        }
                                                                        Label_0343: {
                                                                            gameKeyValuePairs2.setRowKey(attributeValue);
                                                                        }
                                                                        continue Label_0176_Outer;
                                                                    }
                                                                    nodeValue = item3.getFirstChild().getNodeValue();
                                                                    s2 = s3;
                                                                    s4 = nodeValue;
                                                                    break Label_0483;
                                                                    break Block_6;
                                                                    gameKeyValuePairs2.setRowKey("");
                                                                    continue Label_0176_Outer;
                                                                }
                                                                item2 = elementsByTagName.item(n3);
                                                                attributes = item2.getAttributes();
                                                                getAttributeValue(attributes, "c");
                                                                attributeValue2 = getAttributeValue(attributes, "reqID");
                                                                gameKeyValuePairs2.setReqId(attributeValue2);
                                                                attributeValue = getAttributeValue(attributes, "row_key");
                                                                continue Block_10_Outer;
                                                            }
                                                            equals = ("1".equals(attributeValue3) ? 1 : 0);
                                                            childNodes = item.getChildNodes();
                                                            s3 = null;
                                                            s5 = null;
                                                            n = 0;
                                                            continue Block_8_Outer;
                                                        }
                                                        attributeValue3 = getAttributeValue(item.getAttributes(), "b");
                                                        continue Label_0247_Outer;
                                                    }
                                                }
                                                item3 = childNodes.item(n);
                                                nodeName = item3.getNodeName();
                                                continue Label_0061_Outer;
                                            }
                                        }
                                        // iftrue(Label_0456:, item3.getFirstChild() == null)
                                        catch (Exception ex) {
                                            throw ex;
                                        }
                                        Label_0356: {
                                            if (nodeName.equalsIgnoreCase("value")) {
                                                nodeValue2 = item3.getFirstChild().getNodeValue();
                                                s4 = s5;
                                                s2 = nodeValue2;
                                                break Label_0483;
                                            }
                                        }
                                        Label_0456: {
                                            break Label_0456;
                                            Label_0392:
                                            if (!StringUtil.isEmpty(attributeValue)) {
                                                gameKeyValuePairs2.setObjectKeyValue(attributeValue, s5, s3, attributeValue2);
                                                break Block_8_Outer;
                                            }
                                            if (equals != 0) {
                                                gameKeyValuePairs2.setKeyValue(s5, Base64.decode(s3, 0));
                                                break Block_8_Outer;
                                            }
                                            gameKeyValuePairs2.setKeyValue(s5, s3);
                                            break Block_8_Outer;
                                        }
                                        s4 = s5;
                                        s2 = s3;
                                        break Label_0483;
                                        Label_0467:
                                        equals = 0;
                                        continue;
                                    }
                                }
                                gameKeyValuePairs2 = gameKeyValuePairs;
                            }
                            n3 = 0;
                            continue Label_0061;
                        }
                        ++n;
                        s3 = s2;
                        s5 = s4;
                        continue Label_0176_Outer;
                    }
                    ++n2;
                    continue Label_0176;
                }
                Label_0503: {
                    ++n3;
                }
                continue Label_0061;
            }
        }
        Label_0449: {
            responseValues.setGameKeyValuePairs(gameKeyValuePairs2);
        }
    }
    
    private static void parseGetMail(final String s, final ResponseValues responseValues) throws Exception {
        ArrayList<Mail> list;
        while (true) {
            NodeList elementsByTagName;
            int n = 0;
            Node item;
            NamedNodeMap attributes;
            String attributeValue;
            String attributeValue2;
            NodeList childNodes;
            int n2;
            Mail e;
            Node item2;
            NamedNodeMap attributes2;
            String attributeValue3;
            String attributeValue4;
            String attributeValue5;
            String attributeValue6;
            NodeList childNodes2;
            int n3 = 0;
            Node item3;
            String nodeName;
            Gift gift;
            NamedNodeMap attributes3;
            String attributeValue7;
            String attributeValue8;
            String attributeValue9;
            String attributeValue10;
            Label_0133_Outer:Label_0316_Outer:
            while (true) {
                Label_0568: {
                    while (true) {
                    Label_0562:
                        while (true) {
                            try {
                                elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("mail");
                                list = new ArrayList<Mail>();
                                n = 0;
                                if (n >= elementsByTagName.getLength()) {
                                    break;
                                }
                                item = elementsByTagName.item(n);
                                attributes = item.getAttributes();
                                attributeValue = getAttributeValue(attributes, "error");
                                if (!StringUtil.isEmpty(attributeValue)) {
                                    responseValues.setError(attributeValue);
                                }
                                attributeValue2 = getAttributeValue(attributes, "to_user");
                                if (!StringUtil.isEmpty(attributeValue2)) {
                                    responseValues.setFuseId(attributeValue2);
                                }
                                childNodes = item.getChildNodes();
                                n2 = 0;
                                if (n2 >= childNodes.getLength()) {
                                    break Label_0568;
                                }
                                e = new Mail();
                                item2 = childNodes.item(n2);
                                if (item2.getNodeName().equalsIgnoreCase("mail_item")) {
                                    attributes2 = item2.getAttributes();
                                    attributeValue3 = getAttributeValue(attributes2, "alias");
                                    if (!StringUtil.isEmpty(attributeValue3)) {
                                        e.setAlias(Html.fromHtml(Html.fromHtml(attributeValue3).toString()).toString());
                                    }
                                    attributeValue4 = getAttributeValue(attributes2, "time");
                                    if (!StringUtil.isEmpty(attributeValue4)) {
                                        e.setDate(attributeValue4);
                                    }
                                    attributeValue5 = getAttributeValue(attributes2, "from_user");
                                    if (!StringUtil.isEmpty(attributeValue5)) {
                                        e.setFuseId(attributeValue5);
                                    }
                                    attributeValue6 = getAttributeValue(attributes2, "id");
                                    if (!StringUtil.isEmpty(attributeValue6)) {
                                        e.setId(Integer.parseInt(attributeValue6));
                                    }
                                    childNodes2 = item2.getChildNodes();
                                    n3 = 0;
                                    if (n3 < childNodes2.getLength()) {
                                        item3 = childNodes2.item(n3);
                                        nodeName = item3.getNodeName();
                                        if (nodeName.equalsIgnoreCase("gift")) {
                                            gift = new Gift();
                                            attributes3 = item3.getAttributes();
                                            attributeValue7 = getAttributeValue(attributes3, "gift_id");
                                            if (!StringUtil.isEmpty(attributeValue7)) {
                                                gift.setId(Integer.parseInt(attributeValue7));
                                            }
                                            attributeValue8 = getAttributeValue(attributes3, "gift_name");
                                            if (!StringUtil.isEmpty(attributeValue8)) {
                                                gift.setName(attributeValue8);
                                            }
                                            attributeValue9 = getAttributeValue(attributes3, "gift_url");
                                            if (!StringUtil.isEmpty(attributeValue9)) {
                                                gift.setUrl(attributeValue9);
                                            }
                                            attributeValue10 = getAttributeValue(attributes3, "gift_amount");
                                            if (!StringUtil.isEmpty(attributeValue10)) {
                                                gift.setAmount(Integer.parseInt(attributeValue10));
                                            }
                                            e.setGift(gift);
                                            break Label_0562;
                                        }
                                        if (nodeName.equalsIgnoreCase("message") && item3.getFirstChild() != null) {
                                            e.setMessage(item3.getFirstChild().getNodeValue());
                                        }
                                        break Label_0562;
                                    }
                                }
                            }
                            catch (Exception ex) {
                                throw ex;
                            }
                            list.add(e);
                            ++n2;
                            continue Label_0316_Outer;
                        }
                        ++n3;
                        continue;
                    }
                }
                ++n;
                continue Label_0133_Outer;
            }
        }
        responseValues.setMailList(responseValues.getFuseId(), list);
    }
    
    private static void parseGetUserTransaction(final String s, final ResponseValues responseValues) throws Exception {
        while (true) {
        Label_0373_Outer:
            while (true) {
                int n = 0;
            Label_0441:
                while (true) {
                    Label_0435: {
                        try {
                            final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("transactions");
                            final ArrayList<UserTransactionLog> userTransactionLogs = new ArrayList<UserTransactionLog>();
                            n = 0;
                            if (n < elementsByTagName.getLength()) {
                                final Node item = elementsByTagName.item(n);
                                final String attributeValue = getAttributeValue(item.getAttributes(), "error");
                                if (!StringUtil.isEmpty(attributeValue)) {
                                    responseValues.setError(attributeValue);
                                }
                                final NodeList childNodes = item.getChildNodes();
                                for (int i = 0; i < childNodes.getLength(); ++i) {
                                    final UserTransactionLog e = new UserTransactionLog();
                                    final NamedNodeMap attributes = childNodes.item(i).getAttributes();
                                    final String attributeValue2 = getAttributeValue(attributes, "id");
                                    if (!StringUtil.isEmpty(attributeValue2)) {
                                        e.setId(Integer.parseInt(attributeValue2));
                                    }
                                    final String attributeValue3 = getAttributeValue(attributes, "alias");
                                    if (!StringUtil.isEmpty(attributeValue3)) {
                                        e.setAlias(Html.fromHtml(Html.fromHtml(attributeValue3).toString()).toString());
                                    }
                                    final String attributeValue4 = getAttributeValue(attributes, "user");
                                    if (!StringUtil.isEmpty(attributeValue4)) {
                                        e.setFuseId(attributeValue4);
                                    }
                                    final String attributeValue5 = getAttributeValue(attributes, "time");
                                    if (!StringUtil.isEmpty(attributeValue5)) {
                                        e.setDate(Integer.parseInt(attributeValue5));
                                    }
                                    final String attributeValue6 = getAttributeValue(attributes, "level");
                                    if (!StringUtil.isEmpty(attributeValue6)) {
                                        e.setLevel(Integer.parseInt(attributeValue6));
                                    }
                                    final String attributeValue7 = getAttributeValue(attributes, "amount_won");
                                    if (!StringUtil.isEmpty(attributeValue7)) {
                                        e.setAmountWon(Integer.parseInt(attributeValue7));
                                    }
                                    final String attributeValue8 = getAttributeValue(attributes, "amount_lost");
                                    if (!StringUtil.isEmpty(attributeValue8)) {
                                        e.setAmountLost(Integer.parseInt(attributeValue8));
                                    }
                                    final String attributeValue9 = getAttributeValue(attributes, "outcome");
                                    if (!StringUtil.isEmpty(attributeValue9)) {
                                        if (Integer.parseInt(attributeValue9) != 1) {
                                            break Label_0435;
                                        }
                                        final boolean wasWon = true;
                                        e.setWasWon(wasWon);
                                    }
                                    final String attributeValue10 = getAttributeValue(attributes, "event_type");
                                    if (!StringUtil.isEmpty(attributeValue10)) {
                                        e.setEventType(FuseAttackRobberyEventType.getFuseAttackRobberyEventTypeByCode(Integer.parseInt(attributeValue10)));
                                    }
                                    userTransactionLogs.add(e);
                                }
                                break Label_0441;
                            }
                            responseValues.setUserTransactionLogs(userTransactionLogs);
                            return;
                        }
                        catch (Exception ex) {
                            throw ex;
                        }
                    }
                    final boolean wasWon = false;
                    continue;
                }
                ++n;
                continue Label_0373_Outer;
            }
        }
    }
    
    private static String parseIncentiveActionComplete(final String p0, final ResponseValues p1) throws Exception {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: invokestatic    javax/xml/parsers/DocumentBuilderFactory.newInstance:()Ljavax/xml/parsers/DocumentBuilderFactory;
        //     3: invokevirtual   javax/xml/parsers/DocumentBuilderFactory.newDocumentBuilder:()Ljavax/xml/parsers/DocumentBuilder;
        //     6: new             Ljava/io/ByteArrayInputStream;
        //     9: dup            
        //    10: aload_0        
        //    11: ldc             "UTF-8"
        //    13: invokevirtual   java/lang/String.getBytes:(Ljava/lang/String;)[B
        //    16: invokespecial   java/io/ByteArrayInputStream.<init>:([B)V
        //    19: invokevirtual   javax/xml/parsers/DocumentBuilder.parse:(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
        //    22: ldc_w           "incentives"
        //    25: invokeinterface org/w3c/dom/Document.getElementsByTagName:(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
        //    30: astore_3       
        //    31: iconst_0       
        //    32: istore          4
        //    34: ldc             ""
        //    36: astore          5
        //    38: iload           4
        //    40: aload_3        
        //    41: invokeinterface org/w3c/dom/NodeList.getLength:()I
        //    46: if_icmpge       362
        //    49: aload_3        
        //    50: iload           4
        //    52: invokeinterface org/w3c/dom/NodeList.item:(I)Lorg/w3c/dom/Node;
        //    57: astore          7
        //    59: new             Ljava/util/ArrayList;
        //    62: dup            
        //    63: invokespecial   java/util/ArrayList.<init>:()V
        //    66: astore          8
        //    68: aload           7
        //    70: invokeinterface org/w3c/dom/Node.getChildNodes:()Lorg/w3c/dom/NodeList;
        //    75: astore          9
        //    77: iconst_0       
        //    78: istore          10
        //    80: aload           5
        //    82: astore          11
        //    84: iload           10
        //    86: aload           9
        //    88: invokeinterface org/w3c/dom/NodeList.getLength:()I
        //    93: if_icmpge       343
        //    96: new             Lcom/fusepowered/util/Incentive;
        //    99: dup            
        //   100: invokespecial   com/fusepowered/util/Incentive.<init>:()V
        //   103: astore          13
        //   105: aload           9
        //   107: iload           10
        //   109: invokeinterface org/w3c/dom/NodeList.item:(I)Lorg/w3c/dom/Node;
        //   114: astore          14
        //   116: aload           14
        //   118: invokeinterface org/w3c/dom/Node.getNodeName:()Ljava/lang/String;
        //   123: astore          15
        //   125: aload           15
        //   127: ldc_w           "incentive"
        //   130: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //   133: ifeq            315
        //   136: aload           14
        //   138: invokeinterface org/w3c/dom/Node.getAttributes:()Lorg/w3c/dom/NamedNodeMap;
        //   143: astore          17
        //   145: aload           17
        //   147: ldc_w           "incentive_id"
        //   150: invokestatic    com/fusepowered/util/XMLParser.getAttributeValue:(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
        //   153: astore          18
        //   155: aload           18
        //   157: invokestatic    com/fusepowered/util/StringUtil.isEmpty:(Ljava/lang/String;)Z
        //   160: ifne            173
        //   163: aload           13
        //   165: aload           18
        //   167: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   170: invokevirtual   com/fusepowered/util/Incentive.setIncentiveId:(I)V
        //   173: aload           17
        //   175: ldc_w           "amount"
        //   178: invokestatic    com/fusepowered/util/XMLParser.getAttributeValue:(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
        //   181: astore          19
        //   183: aload           19
        //   185: invokestatic    com/fusepowered/util/StringUtil.isEmpty:(Ljava/lang/String;)Z
        //   188: ifne            201
        //   191: aload           13
        //   193: aload           19
        //   195: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   198: invokevirtual   com/fusepowered/util/Incentive.setAmount:(I)V
        //   201: aload           17
        //   203: ldc_w           "reward_item_id"
        //   206: invokestatic    com/fusepowered/util/XMLParser.getAttributeValue:(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
        //   209: astore          20
        //   211: aload           20
        //   213: invokestatic    com/fusepowered/util/StringUtil.isEmpty:(Ljava/lang/String;)Z
        //   216: ifne            226
        //   219: aload           13
        //   221: aload           20
        //   223: invokevirtual   com/fusepowered/util/Incentive.setRewardItemId:(Ljava/lang/String;)V
        //   226: aload           17
        //   228: ldc_w           "reward_item_name"
        //   231: invokestatic    com/fusepowered/util/XMLParser.getAttributeValue:(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
        //   234: astore          21
        //   236: aload           21
        //   238: invokestatic    com/fusepowered/util/StringUtil.isEmpty:(Ljava/lang/String;)Z
        //   241: ifne            251
        //   244: aload           13
        //   246: aload           21
        //   248: invokevirtual   com/fusepowered/util/Incentive.setRewardItemName:(Ljava/lang/String;)V
        //   251: aload           17
        //   253: ldc_w           "claim_confirmed"
        //   256: invokestatic    com/fusepowered/util/XMLParser.getAttributeValue:(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
        //   259: astore          22
        //   261: aload           22
        //   263: invokestatic    com/fusepowered/util/StringUtil.isEmpty:(Ljava/lang/String;)Z
        //   266: ifne            287
        //   269: aload           22
        //   271: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   274: ifeq            309
        //   277: iconst_1       
        //   278: istore          23
        //   280: aload           13
        //   282: iload           23
        //   284: invokevirtual   com/fusepowered/util/Incentive.setClaimConfirmed:(Z)V
        //   287: aload           11
        //   289: astore          5
        //   291: aload           8
        //   293: aload           13
        //   295: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   298: pop            
        //   299: iinc            10, 1
        //   302: aload           5
        //   304: astore          11
        //   306: goto            84
        //   309: iconst_0       
        //   310: istore          23
        //   312: goto            280
        //   315: aload           15
        //   317: ldc_w           "status"
        //   320: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //   323: ifeq            379
        //   326: aload           14
        //   328: invokeinterface org/w3c/dom/Node.getFirstChild:()Lorg/w3c/dom/Node;
        //   333: invokeinterface org/w3c/dom/Node.getNodeValue:()Ljava/lang/String;
        //   338: astore          5
        //   340: goto            291
        //   343: aload_1        
        //   344: aload           8
        //   346: invokevirtual   com/fusepowered/util/ResponseValues.setIncentives:(Ljava/util/ArrayList;)V
        //   349: iinc            4, 1
        //   352: aload           11
        //   354: astore          5
        //   356: goto            38
        //   359: astore_2       
        //   360: aload_2        
        //   361: athrow         
        //   362: aload           5
        //   364: areturn        
        //   365: astore_2       
        //   366: aload           5
        //   368: pop            
        //   369: goto            360
        //   372: astore_2       
        //   373: aload           11
        //   375: pop            
        //   376: goto            360
        //   379: aload           11
        //   381: astore          5
        //   383: goto            291
        //    Exceptions:
        //  throws java.lang.Exception
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      31     359    362    Ljava/lang/Exception;
        //  38     77     365    362    Ljava/lang/Exception;
        //  84     173    372    362    Ljava/lang/Exception;
        //  173    201    372    362    Ljava/lang/Exception;
        //  201    226    372    362    Ljava/lang/Exception;
        //  226    251    372    362    Ljava/lang/Exception;
        //  251    277    372    362    Ljava/lang/Exception;
        //  280    287    372    362    Ljava/lang/Exception;
        //  291    299    365    362    Ljava/lang/Exception;
        //  315    340    372    362    Ljava/lang/Exception;
        //  343    349    372    362    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 159, Size: 159
        //     at java.util.ArrayList.rangeCheck(ArrayList.java:635)
        //     at java.util.ArrayList.get(ArrayList.java:411)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private static void parseMessageList(final String s, final ResponseValues responseValues) throws Exception {
        while (true) {
            while (true) {
                int n;
                try {
                    final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("chat_messages");
                    final ArrayList<ChatMessage> list = new ArrayList<ChatMessage>();
                    n = 0;
                    if (n >= elementsByTagName.getLength()) {
                        responseValues.setChatMessages(responseValues.getFuseId(), list);
                        return;
                    }
                    final Node item = elementsByTagName.item(n);
                    final NamedNodeMap attributes = item.getAttributes();
                    final String attributeValue = getAttributeValue(attributes, "error");
                    if (!StringUtil.isEmpty(attributeValue)) {
                        responseValues.setError(attributeValue);
                    }
                    final String attributeValue2 = getAttributeValue(attributes, "to_user");
                    if (!StringUtil.isEmpty(attributeValue2)) {
                        responseValues.setFuseId(attributeValue2);
                    }
                    final NodeList childNodes = item.getChildNodes();
                    for (int i = 0; i < childNodes.getLength(); ++i) {
                        final ChatMessage e = new ChatMessage();
                        final Node item2 = childNodes.item(i);
                        final NamedNodeMap attributes2 = item2.getAttributes();
                        final String attributeValue3 = getAttributeValue(attributes2, "id");
                        if (!StringUtil.isEmpty(attributeValue3)) {
                            e.setId(Integer.parseInt(attributeValue3));
                        }
                        final String attributeValue4 = getAttributeValue(attributes2, "alias");
                        if (!StringUtil.isEmpty(attributeValue4)) {
                            e.setAlias(Html.fromHtml(Html.fromHtml(attributeValue4).toString()).toString());
                        }
                        final String attributeValue5 = getAttributeValue(attributes2, "from_user");
                        if (!StringUtil.isEmpty(attributeValue5)) {
                            e.setFuseId(attributeValue5);
                        }
                        final String attributeValue6 = getAttributeValue(attributes2, "time");
                        if (!StringUtil.isEmpty(attributeValue6)) {
                            e.setDate(Integer.parseInt(attributeValue6));
                        }
                        final String attributeValue7 = getAttributeValue(attributes2, "level");
                        if (!StringUtil.isEmpty(attributeValue7)) {
                            e.setLevel(Integer.parseInt(attributeValue7));
                        }
                        final Node firstChild = item2.getFirstChild();
                        if (firstChild != null) {
                            e.setMessage(firstChild.getNodeValue());
                        }
                        list.add(e);
                    }
                }
                catch (Exception ex) {
                    throw ex;
                }
                ++n;
                continue;
            }
        }
    }
    
    private static void parseRegisterId(final String s, final ResponseValues responseValues) throws Exception {
        NodeList elementsByTagName;
        Account account;
        String attributeValue;
        NamedNodeMap attributes;
        String attributeValue2;
        String attributeValue3;
        int n;
        String attributeValue4;
        Label_0163_Outer:Label_0056_Outer:
        while (true) {
        Label_0056:
            while (true) {
                Label_0207: {
                    try {
                        elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("account_registered");
                        account = responseValues.getAccount();
                        if (account == null) {
                            account = new Account("");
                        }
                        break Label_0207;
                        // iftrue(Label_0132:, StringUtil.isEmpty(attributeValue2))
                        // iftrue(Label_0191:, StringUtil.isEmpty(attributeValue3))
                        // iftrue(Label_0206:, n >= elementsByTagName.getLength())
                        // iftrue(Label_0163:, StringUtil.isEmpty(attributeValue4))
                        // iftrue(Label_0107:, StringUtil.isEmpty(attributeValue))
                        while (true) {
                        Block_6:
                            while (true) {
                                account.setAccountId(attributeValue);
                                Label_0107: {
                                    attributeValue2 = getAttributeValue(attributes, "fuse_id");
                                }
                                Block_3: {
                                    Label_0132: {
                                        Label_0191: {
                                            Block_5: {
                                                break Block_5;
                                                attributeValue3 = getAttributeValue(attributes, "error");
                                                account.errorCode = Integer.parseInt(attributeValue3);
                                                break Label_0191;
                                            }
                                            account.setFuseId(attributeValue2);
                                            break Label_0132;
                                            break Block_3;
                                        }
                                        responseValues.setAccount(account);
                                        ++n;
                                        continue Label_0056;
                                    }
                                    attributeValue4 = getAttributeValue(attributes, "type");
                                    break Block_6;
                                }
                                attributes = elementsByTagName.item(n).getAttributes();
                                attributeValue = getAttributeValue(attributes, "account");
                                continue Label_0163_Outer;
                            }
                            account.setAccountType(AccountType.getAccountTypeByNumber(Integer.parseInt(attributeValue4)));
                            continue Label_0056_Outer;
                        }
                    }
                    catch (Exception ex) {
                        throw ex;
                    }
                    break;
                }
                n = 0;
                continue Label_0056;
            }
        }
        Label_0206:;
    }
    
    public static boolean parseResponse(final ActionType actionType, final String s, final String s2, final ResponseValues responseValues, final FuseCallback fuseCallback) {
        while (true) {
            while (true) {
                Label_0986: {
                    try {
                        switch (actionType) {
                            case ACTION_SESSION_START: {
                                parseSessionStart(s2, responseValues);
                                fuseCallback.sessionStartReceived();
                                fuseCallback.gameConfigurationReceived();
                                return true;
                            }
                            case ACTION_RESUME_SESSION: {
                                parseSessionResume(s2, responseValues);
                                fuseCallback.gameConfigurationReceived();
                                return true;
                            }
                            case ACTION_GET_AD: {
                                if (parseGetAd(s2, responseValues) && fuseCallback instanceof FuseAdCallback) {
                                    ((FuseAdCallback)fuseCallback).displayAd();
                                    return true;
                                }
                                break;
                            }
                            case ACTION_FETCH_DLC_LIST: {
                                parseFetchDlcList(s2, responseValues);
                                return true;
                            }
                            case ACTION_FETCH_SERVER_UTC_TIME: {
                                responseValues.setTimestamp(readTagValue(s2, "utc_time", "xml"));
                                fuseCallback.timeUpdated(Integer.parseInt(responseValues.getTimestamp()));
                                return true;
                            }
                            case ACTION_GET_GAME_DATA: {
                                if (responseValues.getGameKeyValuePairs() == null) {
                                    parseGetGamedata(s2, responseValues);
                                    ((FuseGameDataCallback)fuseCallback).setGameData(responseValues.getAccount().getAccountId(), responseValues.getGameKeyValuePairs());
                                    return true;
                                }
                                break;
                            }
                            case ACTION_SET_GAME_DATA: {
                                if (s != null) {
                                    final int int1 = Integer.parseInt(s);
                                    return parseSetGamedata(s2, responseValues, int1);
                                }
                                break Label_0986;
                            }
                            case ACTION_REGISTER_ID: {
                                parseRegisterId(s2, responseValues);
                                if (responseValues.getAccount().errorCode != 0) {
                                    fuseCallback.sessionLoginError(FuseLoginError.getFuseLoginErrorByCode(responseValues.getAccount().errorCode));
                                }
                                fuseCallback.accountLoginComplete(responseValues.getAccount().getAccountType().getAccountNumber(), responseValues.getAccount().getAccountId());
                                return true;
                            }
                            case ACTION_INCENTIVE_ACTION_COMPLETE: {
                                fuseCallback.incentiveActionCompletedStatus(parseIncentiveActionComplete(s2, responseValues));
                                return true;
                            }
                            case ACTION_REWARD_REDEMPTION: {
                                final Incentive rewardRedemption = parseRewardRedemption(s2, responseValues);
                                fuseCallback.rewardRedeemed(rewardRedemption.getIncentiveId(), rewardRedemption.getAmount(), rewardRedemption.getRewardItemId(), rewardRedemption.getRewardItemName());
                                return true;
                            }
                            case ACTION_GET_MESSAGE_LIST: {
                                parseMessageList(s2, responseValues);
                                final String error = responseValues.getError();
                                if (!StringUtil.isEmpty(error)) {
                                    final FuseChatError fuseChatErrorByCode = FuseChatError.getFuseChatErrorByCode(Integer.parseInt(error));
                                    if (fuseChatErrorByCode != FuseChatError.FUSE_CHAT_NONE) {
                                        fuseCallback.chatListError(fuseChatErrorByCode);
                                        return false;
                                    }
                                }
                                final String fuseId = responseValues.getFuseId();
                                fuseCallback.chatListReceived(responseValues.getChatMessages(fuseId), fuseId);
                                return true;
                            }
                            case ACTION_GET_SIGN_POSTS: {
                                parseSignPost(s2, responseValues);
                                return true;
                            }
                            case ACTION_GET_MAIL: {
                                parseGetMail(s2, responseValues);
                                final String error2 = responseValues.getError();
                                if (!StringUtil.isEmpty(error2)) {
                                    final FuseMailError fuseMailErrorByCode = FuseMailError.getFuseMailErrorByCode(Integer.parseInt(error2));
                                    if (fuseMailErrorByCode != FuseMailError.FUSE_MAIL_NO_ERROR) {
                                        fuseCallback.mailListError(fuseMailErrorByCode);
                                        return false;
                                    }
                                }
                                final String fuseId2 = responseValues.getFuseId();
                                fuseCallback.mailListReceived(responseValues.getMailList(fuseId2), fuseId2);
                                return true;
                            }
                            case ACTION_GET_USER_TRANSACTION_LOG: {
                                parseGetUserTransaction(s2, responseValues);
                                final String error3 = responseValues.getError();
                                if (!StringUtil.isEmpty(error3)) {
                                    final FuseAttackErrors fuseAttackErrorByCode = FuseAttackErrors.getFuseAttackErrorByCode(Integer.parseInt(error3));
                                    if (fuseAttackErrorByCode != FuseAttackErrors.FUSE_ATTACK_NO_ERROR) {
                                        ((FuseGameDataCallback)fuseCallback).attackRobberyLogError(fuseAttackErrorByCode);
                                        return false;
                                    }
                                }
                                ((FuseGameDataCallback)fuseCallback).attackRobberyLogReceived(responseValues.getUserTransactionLogs());
                                return true;
                            }
                            case ACTION_GET_FRIENDS_LIST: {
                                parseGetFriendsList(s2, responseValues);
                                final String error4 = responseValues.getError();
                                if (!StringUtil.isEmpty(error4)) {
                                    final FuseFriendsListError fuseFriendsListErrorByCode = FuseFriendsListError.getFuseFriendsListErrorByCode(Integer.parseInt(error4));
                                    if (fuseFriendsListErrorByCode != FuseFriendsListError.FUSE_FRIENDS_LIST_NO_ERROR) {
                                        fuseCallback.friendsListError(fuseFriendsListErrorByCode);
                                        return false;
                                    }
                                }
                                fuseCallback.friendsListUpdated(responseValues.getFriendsList());
                                return true;
                            }
                            case ACTION_GET_ENEMIES_LIST: {
                                parseGetEnemiesList(s2, responseValues);
                                final String error5 = responseValues.getError();
                                if (!StringUtil.isEmpty(error5)) {
                                    final FuseEnemiesListError fuseEnemiesListErrorByCode = FuseEnemiesListError.getFuseEnemiesListErrorByCode(Integer.parseInt(error5));
                                    if (fuseEnemiesListErrorByCode != FuseEnemiesListError.FUSE_ENEMIES_LIST_NO_ERROR) {
                                        ((FuseGameDataCallback)fuseCallback).enemiesListError(fuseEnemiesListErrorByCode);
                                        return false;
                                    }
                                }
                                ((FuseGameDataCallback)fuseCallback).enemiesListResult(responseValues.getEnemiesList());
                                return true;
                            }
                            case ACTION_ADD_FRIEND: {
                                parseFriendAction(s2, responseValues);
                                fuseCallback.friendAdded(responseValues.getFuseId(), FuseAddFriendError.getFuseAddFriendErrorByCode(Integer.parseInt(responseValues.getError())));
                                return true;
                            }
                            case ACTION_REMOVE_FRIEND: {
                                parseFriendAction(s2, responseValues);
                                fuseCallback.friendRemoved(responseValues.getFuseId(), FuseRemoveFriendError.getFuseRemoveFriendErrorByCode(Integer.parseInt(responseValues.getError())));
                                return true;
                            }
                            case ACTION_ACCEPT_FRIEND: {
                                parseFriendAction(s2, responseValues);
                                fuseCallback.friendAccepted(responseValues.getFuseId(), FuseAcceptFriendError.getFuseAcceptFriendErrorByCode(Integer.parseInt(responseValues.getError())));
                                return true;
                            }
                            case ACTION_REJECT_FRIEND: {
                                parseFriendAction(s2, responseValues);
                                fuseCallback.friendRejected(responseValues.getFuseId(), FuseRejectFriendError.getFuseRejectFriendErrorByCode(Integer.parseInt(responseValues.getError())));
                                return true;
                            }
                            case ACTION_MIGRATE_FRIENDS: {
                                parseFriendAction(s2, responseValues);
                                fuseCallback.friendsMigrated(responseValues.getFuseId(), FuseMigrateFriendsError.getFuseMigrateFriendsErrorByCode(Integer.parseInt(responseValues.getError())));
                                return true;
                            }
                            case ACTION_SEND_MAIL: {
                                final int sendMail = parseSendMail(s2, responseValues);
                                final int int2 = Integer.parseInt(responseValues.getReqId());
                                final FuseMailError fuseMailErrorByCode2 = FuseMailError.getFuseMailErrorByCode(Integer.parseInt(responseValues.getError()));
                                if (fuseMailErrorByCode2 != FuseMailError.FUSE_MAIL_NO_ERROR) {
                                    fuseCallback.mailError(fuseMailErrorByCode2, int2);
                                    return false;
                                }
                                fuseCallback.mailAcknowledged(sendMail, responseValues.getFuseId(), int2);
                                return true;
                            }
                        }
                    }
                    catch (Exception ex) {
                        Log.e("FuseAPI", "Unexpected Exception", (Throwable)ex);
                        if (actionType.equals(ActionType.ACTION_SESSION_START)) {
                            fuseCallback.sessionLoginError(FuseLoginError.FUSE_ERROR_XML_PARSE_ERROR);
                        }
                        if (actionType.equals(ActionType.ACTION_GET_GAME_DATA) || actionType.equals(ActionType.ACTION_SET_GAME_DATA)) {
                            int n;
                            if (s != null) {
                                n = Integer.parseInt(s);
                            }
                            else {
                                n = fuseCallback.requestId;
                            }
                            ((FuseGameDataCallback)fuseCallback).setFuseGameDataError(FuseGameDataError.FUSE_GD_ERROR_XML_PARSE_ERROR, n);
                        }
                        return false;
                    }
                    break;
                }
                final int int1 = 0;
                continue;
            }
        }
        return true;
    }
    
    private static Incentive parseRewardRedemption(final String s, final ResponseValues responseValues) throws Exception {
        Incentive e = null;
    Label_0202_Outer:
        while (true) {
            e = new Incentive();
            while (true) {
            Label_0287:
                while (true) {
                    int n = 0;
                    Label_0281: {
                        try {
                            final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("incentive");
                            n = 0;
                            if (n < elementsByTagName.getLength()) {
                                final NamedNodeMap attributes = elementsByTagName.item(n).getAttributes();
                                final String attributeValue = getAttributeValue(attributes, "incentive_id");
                                if (!StringUtil.isEmpty(attributeValue)) {
                                    e.setIncentiveId(Integer.parseInt(attributeValue));
                                }
                                final String attributeValue2 = getAttributeValue(attributes, "amount");
                                if (!StringUtil.isEmpty(attributeValue2)) {
                                    e.setAmount(Integer.parseInt(attributeValue2));
                                }
                                final String attributeValue3 = getAttributeValue(attributes, "reward_item_id");
                                if (!StringUtil.isEmpty(attributeValue3)) {
                                    e.setRewardItemId(attributeValue3);
                                }
                                final String attributeValue4 = getAttributeValue(attributes, "reward_item_name");
                                if (!StringUtil.isEmpty(attributeValue4)) {
                                    e.setRewardItemName(attributeValue4);
                                }
                                final String attributeValue5 = getAttributeValue(attributes, "claim_confirmed");
                                if (StringUtil.isEmpty(attributeValue5)) {
                                    break Label_0281;
                                }
                                if (Integer.parseInt(attributeValue5) != 0) {
                                    final boolean claimConfirmed = true;
                                    e.setClaimConfirmed(claimConfirmed);
                                    break Label_0281;
                                }
                                break Label_0287;
                            }
                            else {
                                for (final Incentive o : responseValues.getIncentives()) {
                                    if (o.getIncentiveId() == e.getIncentiveId()) {
                                        responseValues.getIncentives().remove(o);
                                    }
                                }
                            }
                        }
                        catch (Exception ex) {
                            throw ex;
                        }
                        break;
                    }
                    ++n;
                    continue Label_0202_Outer;
                }
                final boolean claimConfirmed = false;
                continue;
            }
        }
        responseValues.getIncentives().add(e);
        return e;
    }
    
    private static void parseRewardRedemptionConfirmation(final String s, final ResponseValues responseValues) throws Exception {
    Label_0202_Outer:
        while (true) {
            final Incentive incentive = new Incentive();
            while (true) {
            Label_0277:
                while (true) {
                    int n = 0;
                    Label_0271: {
                        try {
                            final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("incentive");
                            n = 0;
                            if (n < elementsByTagName.getLength()) {
                                final NamedNodeMap attributes = elementsByTagName.item(n).getAttributes();
                                final String attributeValue = getAttributeValue(attributes, "incentive_id");
                                if (!StringUtil.isEmpty(attributeValue)) {
                                    incentive.setIncentiveId(Integer.parseInt(attributeValue));
                                }
                                final String attributeValue2 = getAttributeValue(attributes, "amount");
                                if (!StringUtil.isEmpty(attributeValue2)) {
                                    incentive.setAmount(Integer.parseInt(attributeValue2));
                                }
                                final String attributeValue3 = getAttributeValue(attributes, "reward_item_id");
                                if (!StringUtil.isEmpty(attributeValue3)) {
                                    incentive.setRewardItemId(attributeValue3);
                                }
                                final String attributeValue4 = getAttributeValue(attributes, "reward_item_name");
                                if (!StringUtil.isEmpty(attributeValue4)) {
                                    incentive.setRewardItemName(attributeValue4);
                                }
                                final String attributeValue5 = getAttributeValue(attributes, "claim_confirmed");
                                if (StringUtil.isEmpty(attributeValue5)) {
                                    break Label_0271;
                                }
                                if (Integer.parseInt(attributeValue5) != 0) {
                                    final boolean claimConfirmed = true;
                                    incentive.setClaimConfirmed(claimConfirmed);
                                    break Label_0271;
                                }
                                break Label_0277;
                            }
                            else {
                                for (final Incentive o : responseValues.getIncentives()) {
                                    if (o.getIncentiveId() == incentive.getIncentiveId()) {
                                        responseValues.getIncentives().remove(o);
                                    }
                                }
                            }
                        }
                        catch (Exception ex) {
                            throw ex;
                        }
                        break;
                    }
                    ++n;
                    continue Label_0202_Outer;
                }
                final boolean claimConfirmed = false;
                continue;
            }
        }
    }
    
    private static int parseSendMail(final String s, final ResponseValues responseValues) throws Exception {
        int int1 = 0;
        try {
            final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("send_mail");
            for (int i = 0; i < elementsByTagName.getLength(); ++i) {
                final NamedNodeMap attributes = elementsByTagName.item(i).getAttributes();
                final String attributeValue = getAttributeValue(attributes, "error");
                if (!StringUtil.isEmpty(attributeValue)) {
                    responseValues.setError(attributeValue);
                }
                final String attributeValue2 = getAttributeValue(attributes, "fuse_id");
                if (!StringUtil.isEmpty(attributeValue2)) {
                    responseValues.setFuseId(attributeValue2);
                }
                final String attributeValue3 = getAttributeValue(attributes, "message_id");
                if (!StringUtil.isEmpty(attributeValue3)) {
                    int1 = Integer.parseInt(attributeValue3);
                }
                final String attributeValue4 = getAttributeValue(attributes, "reqID");
                if (!StringUtil.isEmpty(attributeValue4)) {
                    responseValues.setReqId(attributeValue4);
                }
            }
        }
        catch (Exception ex) {
            throw ex;
        }
        return int1;
    }
    
    private static void parseSessionResume(final String s, final ResponseValues responseValues) throws Exception {
        Document parse;
        NodeList elementsByTagName;
        int n = 0;
        NodeList childNodes;
        int n2 = 0;
        Node item = null;
        String nodeName = null;
        ArrayList<AdProvider> ads = null;
        ArrayList<GameConfig> gameConfigs = null;
        NodeList childNodes2;
        int n3 = 0;
        Node item2;
        String nodeName2;
        AdProvider e;
        NodeList childNodes3;
        int n4 = 0;
        NamedNodeMap attributes;
        String attributeValue;
        boolean test;
        GameConfig e2 = null;
        String attributeValue2;
        NodeList childNodes4;
        int n5 = 0;
        Node item3;
        String nodeName3;
        NodeList childNodes5;
        ArrayList<Incentive> incentives;
        Incentive e3;
        Node item4;
        NamedNodeMap attributes2;
        String attributeValue3;
        String attributeValue4;
        String attributeValue5;
        String attributeValue6;
        String attributeValue7;
        Label_0082_Outer:Label_0183_Outer:Label_0570_Outer:
        while (true) {
            while (true) {
                Label_0247_Outer:Label_0343_Outer:
                while (true) {
                    Label_1048: {
                        while (true) {
                        Label_1042:
                            while (true) {
                            Label_1036:
                                while (true) {
                                Label_1030:
                                    while (true) {
                                        Label_1023: {
                                            Label_1008: {
                                                Label_0754: {
                                                    Label_0743: {
                                                        try {
                                                            parse = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8")));
                                                            responseValues.setTimestamp(readTagValue(s, "utc_time", "xml"));
                                                            elementsByTagName = parse.getElementsByTagName("xml");
                                                            n = 0;
                                                            if (n >= elementsByTagName.getLength()) {
                                                                break;
                                                            }
                                                            childNodes = elementsByTagName.item(n).getChildNodes();
                                                            n2 = 0;
                                                            if (n2 >= childNodes.getLength()) {
                                                                break Label_1023;
                                                            }
                                                            item = childNodes.item(n2);
                                                            nodeName = item.getNodeName();
                                                            if (nodeName.equalsIgnoreCase("utc_time")) {
                                                                responseValues.setTimestamp(readTagValue(s, "utc_time", "xml"));
                                                                break Label_1030;
                                                            }
                                                            if (!nodeName.equalsIgnoreCase("config")) {
                                                                break Label_1030;
                                                            }
                                                            ads = new ArrayList<AdProvider>();
                                                            gameConfigs = new ArrayList<GameConfig>();
                                                            childNodes2 = item.getChildNodes();
                                                            n3 = 0;
                                                            if (n3 >= childNodes2.getLength()) {
                                                                break Label_1008;
                                                            }
                                                            item2 = childNodes2.item(n3);
                                                            nodeName2 = item2.getNodeName();
                                                            if (nodeName2.equalsIgnoreCase("ads")) {
                                                                e = new AdProvider();
                                                                childNodes3 = item2.getChildNodes();
                                                                n4 = 0;
                                                                if (n4 >= childNodes3.getLength()) {
                                                                    ads.add(e);
                                                                    break Label_1048;
                                                                }
                                                                attributes = childNodes3.item(n4).getAttributes();
                                                                attributeValue = getAttributeValue(attributes, "provider_id");
                                                                if (!StringUtil.isEmpty(attributeValue)) {
                                                                    e.setProvider_id(Integer.parseInt(attributeValue));
                                                                }
                                                                if (!StringUtil.isEmpty(getAttributeValue(attributes, "test"))) {
                                                                    if (attributes.getNamedItem("test").getNodeValue().equals("0")) {
                                                                        break Label_1042;
                                                                    }
                                                                    test = true;
                                                                    e.setTest(test);
                                                                }
                                                                if (!StringUtil.isEmpty(getAttributeValue(attributes, "value"))) {
                                                                    e.setValue(Integer.parseInt(attributes.getNamedItem("value").getNodeValue()));
                                                                }
                                                                if (!StringUtil.isEmpty(getAttributeValue(attributes, "interstitial"))) {
                                                                    e.setInterstitial(Integer.parseInt(attributes.getNamedItem("interstitial").getNodeValue()));
                                                                }
                                                                if (!StringUtil.isEmpty(getAttributeValue(attributes, "keywords"))) {
                                                                    e.setKeywords(attributes.getNamedItem("keywords").getNodeValue());
                                                                }
                                                                if (!StringUtil.isEmpty(getAttributeValue(attributes, "ids"))) {
                                                                    e.setIds(attributes.getNamedItem("ids").getNodeValue());
                                                                }
                                                                break Label_1036;
                                                            }
                                                            else {
                                                                if (!nodeName2.equalsIgnoreCase("game_config")) {
                                                                    break Label_0754;
                                                                }
                                                                e2 = new GameConfig();
                                                                attributeValue2 = getAttributeValue(item2.getAttributes(), "id");
                                                                if (!StringUtil.isEmpty(attributeValue2)) {
                                                                    e2.setId(Integer.parseInt(attributeValue2));
                                                                }
                                                                childNodes4 = item2.getChildNodes();
                                                                n5 = 0;
                                                                if (n5 >= childNodes4.getLength()) {
                                                                    break Label_0743;
                                                                }
                                                                item3 = childNodes4.item(n5);
                                                                nodeName3 = item3.getNodeName();
                                                                if (nodeName3.equalsIgnoreCase("key")) {
                                                                    if (item3.getFirstChild() != null && !StringUtil.isEmpty(item3.getFirstChild().getNodeValue())) {
                                                                        e2.setKey(item3.getFirstChild().getNodeValue());
                                                                        break Label_0247_Outer;
                                                                    }
                                                                    e2.setKey("");
                                                                    break Label_0247_Outer;
                                                                }
                                                            }
                                                        }
                                                        catch (Exception ex) {
                                                            throw ex;
                                                        }
                                                        if (!nodeName3.equalsIgnoreCase("value")) {
                                                            break Label_0247_Outer;
                                                        }
                                                        if (item3.getFirstChild() != null && !StringUtil.isEmpty(item3.getFirstChild().getNodeValue())) {
                                                            e2.setValue(item3.getFirstChild().getNodeValue());
                                                            break Label_0247_Outer;
                                                        }
                                                        e2.setValue("");
                                                        break Label_0247_Outer;
                                                    }
                                                    gameConfigs.add(e2);
                                                    break Label_1048;
                                                }
                                                if (nodeName.equalsIgnoreCase("incentives")) {
                                                    childNodes5 = item.getChildNodes();
                                                    incentives = new ArrayList<Incentive>();
                                                    for (int i = 0; i < childNodes5.getLength(); ++i) {
                                                        e3 = new Incentive();
                                                        item4 = childNodes5.item(i);
                                                        if (item4.getNodeName().equalsIgnoreCase("incentive")) {
                                                            attributes2 = item4.getAttributes();
                                                            attributeValue3 = getAttributeValue(attributes2, "incentive_id");
                                                            if (!StringUtil.isEmpty(attributeValue3)) {
                                                                e3.setIncentiveId(Integer.parseInt(attributeValue3));
                                                            }
                                                            attributeValue4 = getAttributeValue(attributes2, "amount");
                                                            if (!StringUtil.isEmpty(attributeValue4)) {
                                                                e3.setAmount(Integer.parseInt(attributeValue4));
                                                            }
                                                            attributeValue5 = getAttributeValue(attributes2, "reward_item_id");
                                                            if (!StringUtil.isEmpty(attributeValue5)) {
                                                                e3.setRewardItemId(attributeValue5);
                                                            }
                                                            attributeValue6 = getAttributeValue(attributes2, "reward_item_name");
                                                            if (!StringUtil.isEmpty(attributeValue6)) {
                                                                e3.setRewardItemName(attributeValue6);
                                                            }
                                                            attributeValue7 = getAttributeValue(attributes2, "claim_confirmed");
                                                            if (!StringUtil.isEmpty(attributeValue7)) {
                                                                e3.setClaimConfirmed(Integer.parseInt(attributeValue7) != 0);
                                                            }
                                                        }
                                                        incentives.add(e3);
                                                    }
                                                    responseValues.setIncentives(incentives);
                                                }
                                                break Label_1048;
                                            }
                                            responseValues.setAds(ads);
                                            responseValues.setGameConfigs(gameConfigs);
                                            break Label_1030;
                                        }
                                        ++n;
                                        continue Label_0082_Outer;
                                    }
                                    ++n2;
                                    continue Label_0183_Outer;
                                }
                                ++n4;
                                continue Label_0343_Outer;
                            }
                            test = false;
                            continue Label_0570_Outer;
                        }
                    }
                    ++n3;
                    continue Label_0247_Outer;
                }
                ++n5;
                continue;
            }
        }
    }
    
    private static void parseSessionStart(final String s, final ResponseValues responseValues) throws Exception {
        try {
            final Document parse = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8")));
            parseSessionStart_Bootstrap(responseValues, parse.getElementsByTagName("bootstrap"));
            parseAdContent(responseValues, parse.getElementsByTagName("AD_REQUEST"));
        }
        catch (Exception ex) {
            throw ex;
        }
    }
    
    private static void parseSessionStart_Bootstrap(final ResponseValues responseValues, final NodeList list) {
        for (int i = 0; i < list.getLength(); ++i) {
            final Node item = list.item(i);
            final NodeList childNodes = item.getChildNodes();
            for (int j = 0; j < childNodes.getLength(); ++j) {
                final Node item2 = childNodes.item(j);
                final String nodeName = item2.getNodeName();
                if (nodeName.equalsIgnoreCase("session_id")) {
                    responseValues.setSessionId(item2.getFirstChild().getNodeValue());
                }
                else if (nodeName.equalsIgnoreCase("aid")) {
                    responseValues.setApplifierId(item2.getFirstChild().getNodeValue());
                    final NamedNodeMap attributes = item2.getAttributes();
                    final boolean applifierUseImpact = attributes != null && attributes.getNamedItem("use_impact") != null && item2.getAttributes().getNamedItem("use_impact").getNodeValue().equals("1");
                    responseValues.setApplifierUseImpact(applifierUseImpact);
                    final StringBuilder append = new StringBuilder().append("-=-=-=-=-=-==-= USE IMPACT: ");
                    String str;
                    if (applifierUseImpact) {
                        str = "TRUE";
                    }
                    else {
                        str = "FALSE";
                    }
                    Log.e("APPLIFIER", append.append(str).toString());
                }
                else if (nodeName.equalsIgnoreCase("vid")) {
                    responseValues.setVungleId(item2.getFirstChild().getNodeValue());
                }
                else if (nodeName.equalsIgnoreCase("disable_all")) {
                    responseValues.setDisableAll(!item2.getFirstChild().getNodeValue().equals("0"));
                }
                else if (nodeName.equalsIgnoreCase("disable_notifications")) {
                    responseValues.setDisableNotifications(!item2.getFirstChild().getNodeValue().equals("0"));
                }
                else if (nodeName.equalsIgnoreCase("disable_configuration")) {
                    responseValues.setDisableConfiguration(!item2.getFirstChild().getNodeValue().equals("0"));
                }
                else if (nodeName.equalsIgnoreCase("disable_analytics")) {
                    responseValues.setDisableAnalytics(!item2.getFirstChild().getNodeValue().equals("0"));
                }
                else if (nodeName.equalsIgnoreCase("utc_time")) {
                    if (item2.getFirstChild() != null) {
                        responseValues.setTimestamp(item2.getFirstChild().getNodeValue());
                    }
                }
                else if (nodeName.equalsIgnoreCase("user_city")) {
                    if (item2.getFirstChild() != null) {
                        responseValues.setUserCity(item2.getFirstChild().getNodeValue());
                    }
                }
                else if (nodeName.equalsIgnoreCase("user_country")) {
                    if (item2.getFirstChild() != null) {
                        responseValues.setUserCountry(item2.getFirstChild().getNodeValue());
                    }
                }
                else if (nodeName.equalsIgnoreCase("messages")) {
                    final NodeList childNodes2 = item2.getChildNodes();
                    final ArrayList<Message> messages = new ArrayList<Message>();
                    for (int k = 0; k < childNodes2.getLength(); ++k) {
                        final Message e = new Message();
                        final Node item3 = childNodes2.item(k);
                        final NamedNodeMap attributes2 = item3.getAttributes();
                        e.setId(Integer.parseInt(attributes2.getNamedItem("id").getNodeValue()));
                        e.setSticky(Integer.parseInt(attributes2.getNamedItem("sticky").getNodeValue()));
                        e.setIsUpgrade(Integer.parseInt(attributes2.getNamedItem("upgrade").getNodeValue()) == 1);
                        if (attributes2.getNamedItem("max_views") != null) {
                            e.setMax_views(Integer.parseInt(attributes2.getNamedItem("max_views").getNodeValue()));
                        }
                        else {
                            e.setMax_views(0);
                        }
                        e.setShowOnView(Integer.parseInt(attributes2.getNamedItem("show_on_view").getNodeValue()));
                        if (attributes2.getNamedItem("is_url") != null) {
                            e.setIsUrl(Integer.parseInt(attributes2.getNamedItem("is_url").getNodeValue()));
                        }
                        else {
                            e.setIsUrl(1);
                        }
                        if (attributes2.getNamedItem("mandatory") != null) {
                            e.setMandatory(Integer.parseInt(attributes2.getNamedItem("mandatory").getNodeValue()));
                        }
                        else {
                            e.setMandatory(0);
                        }
                        e.setDisplayed(false);
                        e.setClicked(false);
                        final NodeList childNodes3 = item3.getChildNodes();
                        for (int l = 0; l < childNodes3.getLength(); ++l) {
                            final Node item4 = childNodes3.item(l);
                            final String nodeName2 = item4.getNodeName();
                            if (nodeName2.equalsIgnoreCase("title")) {
                                e.setTitle(item4.getFirstChild().getNodeValue());
                            }
                            else if (nodeName2.equalsIgnoreCase("action")) {
                                e.setAction(item4.getFirstChild().getNodeValue());
                            }
                            else if (nodeName2.equalsIgnoreCase("body")) {
                                e.setBody(item4.getFirstChild().getNodeValue());
                            }
                            else if (nodeName2.equalsIgnoreCase("action_title")) {
                                e.setActionTtitle(item4.getFirstChild().getNodeValue());
                            }
                        }
                        messages.add(e);
                    }
                    for (int n = 0, n2 = messages.size() - 1; n < n2; ++n, --n2) {
                        final Message element = messages.get(n);
                        messages.set(n, messages.get(n2));
                        messages.set(n2, element);
                    }
                    responseValues.setMessages(messages);
                }
                else if (nodeName.equalsIgnoreCase("config")) {
                    final ArrayList<AdProvider> ads = new ArrayList<AdProvider>();
                    final ArrayList<GameConfig> gameConfigs = new ArrayList<GameConfig>();
                    final NodeList childNodes4 = item2.getChildNodes();
                    for (int n3 = 0; n3 < childNodes4.getLength(); ++n3) {
                        final Node item5 = childNodes4.item(n3);
                        final String nodeName3 = item5.getNodeName();
                        if (nodeName3.equalsIgnoreCase("ads")) {
                            final AdProvider e2 = new AdProvider();
                            final NodeList childNodes5 = item5.getChildNodes();
                            for (int n4 = 0; n4 < childNodes5.getLength(); ++n4) {
                                final NamedNodeMap attributes3 = childNodes5.item(n4).getAttributes();
                                final String attributeValue = getAttributeValue(attributes3, "provider_id");
                                if (!StringUtil.isEmpty(attributeValue)) {
                                    e2.setProvider_id(Integer.parseInt(attributeValue));
                                }
                                if (!StringUtil.isEmpty(getAttributeValue(attributes3, "test"))) {
                                    e2.setTest(!attributes3.getNamedItem("test").getNodeValue().equals("0"));
                                }
                                if (!StringUtil.isEmpty(getAttributeValue(attributes3, "value"))) {
                                    e2.setValue(Integer.parseInt(attributes3.getNamedItem("value").getNodeValue()));
                                }
                                if (!StringUtil.isEmpty(getAttributeValue(attributes3, "interstitial"))) {
                                    e2.setInterstitial(Integer.parseInt(attributes3.getNamedItem("interstitial").getNodeValue()));
                                }
                                if (!StringUtil.isEmpty(getAttributeValue(attributes3, "keywords"))) {
                                    e2.setKeywords(attributes3.getNamedItem("keywords").getNodeValue());
                                }
                                if (!StringUtil.isEmpty(getAttributeValue(attributes3, "ids"))) {
                                    e2.setIds(attributes3.getNamedItem("ids").getNodeValue());
                                }
                            }
                            ads.add(e2);
                        }
                        else if (nodeName3.equalsIgnoreCase("game_config")) {
                            final GameConfig e3 = new GameConfig();
                            final String attributeValue2 = getAttributeValue(item5.getAttributes(), "id");
                            if (!StringUtil.isEmpty(attributeValue2)) {
                                e3.setId(Integer.parseInt(attributeValue2));
                            }
                            final NodeList childNodes6 = item5.getChildNodes();
                            for (int n5 = 0; n5 < childNodes6.getLength(); ++n5) {
                                final Node item6 = childNodes6.item(n5);
                                final String nodeName4 = item6.getNodeName();
                                if (nodeName4.equalsIgnoreCase("key")) {
                                    if (item6.getFirstChild() != null && !StringUtil.isEmpty(item6.getFirstChild().getNodeValue())) {
                                        e3.setKey(item6.getFirstChild().getNodeValue());
                                    }
                                    else {
                                        e3.setKey("");
                                    }
                                }
                                else if (nodeName4.equalsIgnoreCase("value")) {
                                    if (item6.getFirstChild() != null && !StringUtil.isEmpty(item6.getFirstChild().getNodeValue())) {
                                        e3.setValue(item6.getFirstChild().getNodeValue());
                                    }
                                    else {
                                        e3.setValue("");
                                    }
                                }
                            }
                            gameConfigs.add(e3);
                        }
                    }
                    responseValues.setAds(ads);
                    responseValues.setGameConfigs(gameConfigs);
                }
                else if (nodeName.equalsIgnoreCase("dlc")) {
                    final DLC e4 = new DLC();
                    final NamedNodeMap attributes4 = item.getAttributes();
                    final String attributeValue3 = getAttributeValue(attributes4, "bytes");
                    if (!StringUtil.isEmpty(attributeValue3)) {
                        e4.setBytes(Integer.parseInt(attributeValue3));
                    }
                    final String attributeValue4 = getAttributeValue(attributes4, "content_id");
                    if (!StringUtil.isEmpty(attributeValue4)) {
                        e4.setContentId(Integer.parseInt(attributeValue4));
                    }
                    final String attributeValue5 = getAttributeValue(attributes4, "id");
                    if (!StringUtil.isEmpty(attributeValue5)) {
                        e4.setId(Integer.parseInt(attributeValue5));
                    }
                    final String attributeValue6 = getAttributeValue(attributes4, "num_files");
                    if (!StringUtil.isEmpty(attributeValue6)) {
                        e4.setNumFiles(Integer.parseInt(attributeValue6));
                    }
                    final String attributeValue7 = getAttributeValue(attributes4, "product_id");
                    if (!StringUtil.isEmpty(attributeValue7)) {
                        e4.setProductId(attributeValue7);
                    }
                    final String attributeValue8 = getAttributeValue(attributes4, "update");
                    if (!StringUtil.isEmpty(attributeValue8)) {
                        e4.setUpdate(!attributeValue8.equals("0"));
                    }
                    final NodeList childNodes7 = item2.getChildNodes();
                    final ArrayList<DlcContent> dlcContents = new ArrayList<DlcContent>();
                    for (int n6 = 0; n6 < childNodes7.getLength(); ++n6) {
                        final DlcContent e5 = new DlcContent();
                        final Node item7 = childNodes7.item(n6);
                        if (item7.getNodeName().equalsIgnoreCase("dlc_content")) {
                            final NamedNodeMap attributes5 = item7.getAttributes();
                            final String attributeValue9 = getAttributeValue(attributes5, "bytes");
                            if (!StringUtil.isEmpty(attributeValue9)) {
                                e5.setBytes(Integer.parseInt(attributeValue9));
                            }
                            final String attributeValue10 = getAttributeValue(attributes5, "content_id");
                            if (!StringUtil.isEmpty(attributeValue10)) {
                                e5.setContentId(Integer.parseInt(attributeValue10));
                            }
                            final String attributeValue11 = getAttributeValue(attributes5, "downloadpath");
                            if (!StringUtil.isEmpty(attributeValue11)) {
                                e5.setDownloadPath(attributeValue11);
                            }
                            final String attributeValue12 = getAttributeValue(attributes5, "id");
                            if (!StringUtil.isEmpty(attributeValue12)) {
                                e5.setId(Integer.parseInt(attributeValue12));
                            }
                            final String attributeValue13 = getAttributeValue(attributes5, "md5");
                            if (!StringUtil.isEmpty(attributeValue13)) {
                                e5.setMd5(attributeValue13);
                            }
                            final String attributeValue14 = getAttributeValue(attributes5, "parent_id");
                            if (!StringUtil.isEmpty(attributeValue14)) {
                                e5.setParentId(Integer.parseInt(attributeValue14));
                            }
                            final String attributeValue15 = getAttributeValue(attributes5, "purchased");
                            if (!StringUtil.isEmpty(attributeValue15)) {
                                e5.setPurchased(!attributeValue15.equals("0"));
                            }
                            final String attributeValue16 = getAttributeValue(attributes5, "auto_download");
                            if (!StringUtil.isEmpty(attributeValue16)) {
                                e5.setAutoDownload(!attributeValue16.equals("0"));
                            }
                            final String attributeValue17 = getAttributeValue(attributes5, "product_id");
                            if (!StringUtil.isEmpty(attributeValue17)) {
                                e5.setProductId(attributeValue17);
                            }
                        }
                        dlcContents.add(e5);
                    }
                    e4.setDlcContents(dlcContents);
                    ArrayList<DLC> dlc = responseValues.getDlc();
                    if (dlc == null) {
                        dlc = new ArrayList<DLC>();
                    }
                    dlc.add(e4);
                    responseValues.setDlc(dlc);
                }
                else if (nodeName.equalsIgnoreCase("incentives")) {
                    final NodeList childNodes8 = item2.getChildNodes();
                    final ArrayList<Incentive> incentives = new ArrayList<Incentive>();
                    for (int n7 = 0; n7 < childNodes8.getLength(); ++n7) {
                        final Incentive e6 = new Incentive();
                        final Node item8 = childNodes8.item(n7);
                        if (item8.getNodeName().equalsIgnoreCase("incentive")) {
                            final NamedNodeMap attributes6 = item8.getAttributes();
                            final String attributeValue18 = getAttributeValue(attributes6, "incentive_id");
                            if (!StringUtil.isEmpty(attributeValue18)) {
                                e6.setIncentiveId(Integer.parseInt(attributeValue18));
                            }
                            final String attributeValue19 = getAttributeValue(attributes6, "amount");
                            if (!StringUtil.isEmpty(attributeValue19)) {
                                e6.setAmount(Integer.parseInt(attributeValue19));
                            }
                            final String attributeValue20 = getAttributeValue(attributes6, "reward_item_id");
                            if (!StringUtil.isEmpty(attributeValue20)) {
                                e6.setRewardItemId(attributeValue20);
                            }
                            final String attributeValue21 = getAttributeValue(attributes6, "reward_item_name");
                            if (!StringUtil.isEmpty(attributeValue21)) {
                                e6.setRewardItemName(attributeValue21);
                            }
                            final String attributeValue22 = getAttributeValue(attributes6, "claim_confirmed");
                            if (!StringUtil.isEmpty(attributeValue22)) {
                                e6.setClaimConfirmed(Integer.parseInt(attributeValue22) != 0);
                            }
                        }
                        incentives.add(e6);
                    }
                    responseValues.setIncentives(incentives);
                }
            }
        }
    }
    
    private static boolean parseSetGamedata(final String s, final ResponseValues responseValues, final int n) throws Exception {
        try {
            final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("set_game_data");
            int int1 = 0;
            for (int i = 0; i < elementsByTagName.getLength(); ++i) {
                final String attributeValue = getAttributeValue(elementsByTagName.item(i).getAttributes(), "reqID");
                if (!StringUtil.isEmpty(attributeValue)) {
                    int1 = Integer.parseInt(attributeValue);
                }
                if (int1 == n) {
                    return true;
                }
            }
            return false;
        }
        catch (Exception ex) {
            throw ex;
        }
        return false;
    }
    
    private static void parseSignPost(final String s, final ResponseValues responseValues) throws Exception {
        while (true) {
            while (true) {
                int n;
                try {
                    final NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8"))).getElementsByTagName("sign_posts");
                    final ArrayList<SignPost> signPosts = new ArrayList<SignPost>();
                    n = 0;
                    if (n >= elementsByTagName.getLength()) {
                        responseValues.setSignPosts(signPosts);
                        return;
                    }
                    final NodeList childNodes = elementsByTagName.item(n).getChildNodes();
                    for (int i = 0; i < childNodes.getLength(); ++i) {
                        final SignPost e = new SignPost();
                        final Node item = childNodes.item(i);
                        final NamedNodeMap attributes = item.getAttributes();
                        final String attributeValue = getAttributeValue(attributes, "id");
                        if (!StringUtil.isEmpty(attributeValue)) {
                            e.setId(Integer.parseInt(attributeValue));
                        }
                        final String attributeValue2 = getAttributeValue(attributes, "alias");
                        if (!StringUtil.isEmpty(attributeValue2)) {
                            e.setAlias(Html.fromHtml(Html.fromHtml(attributeValue2).toString()).toString());
                        }
                        final String attributeValue3 = getAttributeValue(attributes, "from_user");
                        if (!StringUtil.isEmpty(attributeValue3)) {
                            e.setFuseId(attributeValue3);
                        }
                        final String attributeValue4 = getAttributeValue(attributes, "time");
                        if (!StringUtil.isEmpty(attributeValue4)) {
                            e.setDate(attributeValue4);
                        }
                        final String attributeValue5 = getAttributeValue(attributes, "url");
                        if (!StringUtil.isEmpty(attributeValue5)) {
                            e.setUrl(attributeValue5);
                        }
                        if (item.getFirstChild() != null) {
                            e.setMessage(item.getFirstChild().getNodeValue());
                        }
                        signPosts.add(e);
                    }
                }
                catch (Exception ex) {
                    throw ex;
                }
                ++n;
                continue;
            }
        }
    }
    
    private static String readTagValue(final String p0, final String p1, final String p2) throws Exception {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             ""
        //     2: astore_3       
        //     3: invokestatic    javax/xml/parsers/DocumentBuilderFactory.newInstance:()Ljavax/xml/parsers/DocumentBuilderFactory;
        //     6: invokevirtual   javax/xml/parsers/DocumentBuilderFactory.newDocumentBuilder:()Ljavax/xml/parsers/DocumentBuilder;
        //     9: new             Ljava/io/ByteArrayInputStream;
        //    12: dup            
        //    13: aload_0        
        //    14: ldc             "UTF-8"
        //    16: invokevirtual   java/lang/String.getBytes:(Ljava/lang/String;)[B
        //    19: invokespecial   java/io/ByteArrayInputStream.<init>:([B)V
        //    22: invokevirtual   javax/xml/parsers/DocumentBuilder.parse:(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
        //    25: aload_2        
        //    26: invokeinterface org/w3c/dom/Document.getElementsByTagName:(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
        //    31: astore          6
        //    33: iconst_0       
        //    34: istore          7
        //    36: iload           7
        //    38: aload           6
        //    40: invokeinterface org/w3c/dom/NodeList.getLength:()I
        //    45: if_icmpge       151
        //    48: aload           6
        //    50: iload           7
        //    52: invokeinterface org/w3c/dom/NodeList.item:(I)Lorg/w3c/dom/Node;
        //    57: invokeinterface org/w3c/dom/Node.getChildNodes:()Lorg/w3c/dom/NodeList;
        //    62: astore          8
        //    64: iconst_0       
        //    65: istore          9
        //    67: aload_3        
        //    68: astore          10
        //    70: iload           9
        //    72: aload           8
        //    74: invokeinterface org/w3c/dom/NodeList.getLength:()I
        //    79: if_icmpge       135
        //    82: aload           8
        //    84: iload           9
        //    86: invokeinterface org/w3c/dom/NodeList.item:(I)Lorg/w3c/dom/Node;
        //    91: astore          12
        //    93: aload           12
        //    95: invokeinterface org/w3c/dom/Node.getNodeName:()Ljava/lang/String;
        //   100: aload_1        
        //   101: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //   104: ifeq            161
        //   107: aload           12
        //   109: invokeinterface org/w3c/dom/Node.getFirstChild:()Lorg/w3c/dom/Node;
        //   114: invokeinterface org/w3c/dom/Node.getNodeValue:()Ljava/lang/String;
        //   119: astore          14
        //   121: aload           14
        //   123: astore          13
        //   125: iinc            9, 1
        //   128: aload           13
        //   130: astore          10
        //   132: goto            70
        //   135: iinc            7, 1
        //   138: aload           10
        //   140: astore_3       
        //   141: goto            36
        //   144: astore          4
        //   146: aload_3        
        //   147: pop            
        //   148: aload           4
        //   150: athrow         
        //   151: aload_3        
        //   152: areturn        
        //   153: astore          4
        //   155: aload           10
        //   157: pop            
        //   158: goto            148
        //   161: aload           10
        //   163: astore          13
        //   165: goto            125
        //    Exceptions:
        //  throws java.lang.Exception
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  3      33     144    151    Ljava/lang/Exception;
        //  36     64     144    151    Ljava/lang/Exception;
        //  70     121    153    151    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0070:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
}
