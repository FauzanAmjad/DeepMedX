import React from 'react';
import { ImageBackground, StyleSheet, Text, View, TouchableOpacity } from 'react-native';

function WelcomeScreen(props) {
    return (
        <ImageBackground 
            style={styles.background}
            source={require('../assets/background.jpg')}>
                
                <View>
                    <Text style={styles.tagline}> Computing and Medicine: An Intelligent Diagnosis. </Text>
                </View>

                <TouchableOpacity>
                    <View style={styles.loginButton}>
                        <Text style={styles.buttonText}> Login </Text>
                    </View>
                </TouchableOpacity>

                <TouchableOpacity>
                    <View style={styles.registerButton}>
                        <Text style={styles.buttonText}> Register </Text>
                    </View>
                </TouchableOpacity>
        </ImageBackground>
    );
}

const styles = StyleSheet.create({
    background: {
        flex: 1,
        justifyContent: 'flex-end',
        alignItems: 'flex-end',
        padding: "5%"
    },
    buttonText: {
        width: 350,
        height: 90,
        color: "white",
        fontSize: 50
    },
    loginButton: {
        flexDirection: 'row',
        width: "50%",
        height: 70,
        marginBottom: "5%",
        backgroundColor: 'dodgerblue'
    },
    registerButton: {
        width: "50%",
        height: 70,
        backgroundColor: 'grey'
    },
    tagline: {
        width: 350,
        height: 90,
        marginBottom: "80%",
        color: "white",
        fontSize: 30,
        flexWrap: 'wrap'
    },
    
});

export default WelcomeScreen;